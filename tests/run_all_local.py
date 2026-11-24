"""Run each menu automation in the visible BotOS runtime for the paired owner."""

from __future__ import annotations

from concurrent.futures import ThreadPoolExecutor, as_completed
from hashlib import sha256
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
import json
import os
from pathlib import Path
import sys
import time


ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / ".botos" / "plugin" / "runtime"))

from app.local_catalog import LocalCatalog  # noqa: E402


def main() -> int:
    routes = json.loads((ROOT / "discovery" / "menu_routes.json").read_text(encoding="utf-8"))["routes"]
    header = json.loads((ROOT / "discovery" / "header_cases.json").read_text(encoding="utf-8"))["cases"]
    catalog = LocalCatalog(ROOT)
    class Callback(BaseHTTPRequestHandler):
        def do_POST(self):
            parts = self.path.strip("/").split("/")
            try:
                if len(parts) != 6 or parts[:3] != ["api", "local", "runs"] or parts[4] != "webhook":
                    raise ValueError("Webhook inválido")
                payload = json.loads(self.rfile.read(int(self.headers["Content-Length"])))
                result = catalog.receive_webhook(parts[3], parts[5], payload)
                body = json.dumps(result).encode()
                self.send_response(200)
            except Exception as exc:
                body = json.dumps({"error": str(exc)}).encode()
                self.send_response(422)
            self.send_header("Content-Type", "application/json")
            self.send_header("Content-Length", str(len(body)))
            self.end_headers()
            self.wfile.write(body)

        def log_message(self, *_):
            pass

    server = ThreadingHTTPServer(("127.0.0.1", 0), Callback)
    os.environ["BOTOS_WEBHOOK_BASE_URL"] = f"http://127.0.0.1:{server.server_port}"
    from threading import Thread
    Thread(target=server.serve_forever, daemon=True).start()
    actors = {row["actor"] for row in catalog.runs if row.get("actor") not in (None, "local")}
    if len(actors) != 1:
        raise RuntimeError("O projeto precisa ter exatamente uma conta conectada com uma execução local")
    actor = next(iter(actors))
    paths = [f"automations/{case['slug']}.robot" for case in routes + header]
    pending = []
    for relative in paths:
        source_hash = sha256((ROOT / relative).read_bytes()).hexdigest()
        if not catalog.has_successful_execution(relative, actor, source_hash):
            pending.append(relative)
    print(f"Executando {len(pending)} de {len(paths)} automações para a conta conectada", flush=True)

    def run_one(relative: str) -> tuple[str, str, str]:
        last = None
        for _ in range(2):
            fixture = f"tests/cases/{Path(relative).stem}/case.json"
            queued = catalog.submit(relative, actor, fixture=fixture)
            deadline = time.monotonic() + 180
            while time.monotonic() < deadline:
                last = next(row for row in catalog.history(actor) if row["id"] == queued["id"])
                if last["status"] in ("PASS", "FAIL"):
                    break
                time.sleep(.2)
            if last and last["status"] == "PASS" and last.get("webhookValid"):
                break
        assert last is not None
        status = "PASS" if last["status"] == "PASS" and last.get("webhookValid") else "FAIL"
        return relative, status, last["error"][-500:]

    failures = []
    with ThreadPoolExecutor(max_workers=2) as pool:
        jobs = {pool.submit(run_one, relative): relative for relative in pending}
        for index, future in enumerate(as_completed(jobs), 1):
            try:
                relative, status, error = future.result()
            except Exception as exc:
                relative, status, error = jobs[future], "FAIL", str(exc)
            print(f"{index}/{len(pending)} {status} {relative}", flush=True)
            if status != "PASS":
                failures.append((relative, error))
    for relative, error in failures:
        print(f"FAIL {relative}: {error}")
    server.shutdown()
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
