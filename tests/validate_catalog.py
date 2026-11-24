"""Check BotOS source contracts, execution evidence and release bundles."""

from __future__ import annotations

from hashlib import sha256
import json
from pathlib import Path
import sys


ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / ".botos" / "plugin" / "runtime"))

from app.domain import validate_source  # noqa: E402
from app.release_bundle import create_bundle  # noqa: E402


def main() -> int:
    routes = json.loads((ROOT / "discovery" / "menu_routes.json").read_text(encoding="utf-8"))["routes"]
    header = json.loads((ROOT / "discovery" / "header_cases.json").read_text(encoding="utf-8"))["cases"]
    cases = routes + header
    runs = json.loads((ROOT / ".botos" / "local-runs.json").read_text(encoding="utf-8"))
    errors: list[str] = []
    owners = {row.get("actor") for row in runs if row.get("actor") not in (None, "local")}
    owner = next(iter(owners)) if len(owners) == 1 else None
    if owner is None:
        errors.append("O histórico deve conter exatamente uma conta BotOS conectada")
    slugs = [case["slug"] for case in cases]
    if len(cases) != 66 or len(set(slugs)) != 66:
        errors.append("O inventário deve conter 66 IDs únicos")
    if "headless=${FALSE}" not in (ROOT / "resources" / "menu_navigation.resource").read_text(encoding="utf-8"):
        errors.append("O navegador local deve ser visível")

    for case in cases:
        slug = case["slug"]
        relative = f"automations/{slug}.robot"
        path = ROOT / relative
        if not path.is_file():
            errors.append(f"{slug}: arquivo ausente")
            continue
        source = path.read_text(encoding="utf-8")
        validation = validate_source(path.name, source)
        errors.extend(f"{slug}: {issue}" for issue in validation["errors"])
        if "href" in case and (case["href"] not in source or case["expected"] not in source):
            errors.append(f"{slug}: href ou destino esperado ausente no código")

        fixture = ROOT / "tests" / "cases" / slug / "case.json"
        if not fixture.is_file() or not fixture.with_suffix(".md").is_file():
            errors.append(f"{slug}: caso de teste JSON e MD obrigatórios")
            continue
        payload = json.loads(fixture.read_text(encoding="utf-8"))
        if not isinstance(payload, dict) or not isinstance(payload.get("automationInput"), dict):
            errors.append(f"{slug}: automationInput deve ser objeto JSON")

        source_hash = sha256(path.read_bytes()).hexdigest()
        evidence = next(
            (row for row in runs if row.get("path") == relative
             and row.get("sourceHash") == source_hash and row.get("status") == "PASS"
             and row.get("mode") == "execution" and row.get("actor") == owner
             and row.get("fixture") == f"tests/cases/{slug}/case.json"
             and row.get("webhookValid") is True and isinstance(row.get("webhook"), dict)),
            None,
        )
        if evidence is None:
            errors.append(f"{slug}: sem PASS local para o hash atual")
        try:
            _, manifest = create_bundle(ROOT, relative)
            if manifest["automationId"] != slug or manifest["projectId"] != ROOT.name:
                errors.append(f"{slug}: identidade da release incorreta")
            if not any(item["path"] == "resources/menu_navigation.resource" for item in manifest["files"]):
                errors.append(f"{slug}: recurso compartilhado fora da release")
            if not any(item["path"] == f"tests/cases/{slug}/case.json" for item in manifest["files"]):
                errors.append(f"{slug}: caso de teste fora da release")
        except Exception as exc:
            errors.append(f"{slug}: pacote inválido: {exc}")

    if errors:
        print("\n".join(errors))
        return 1
    print(f"PASS: {len(cases)} automações com contrato, evidência e pacote BotOS válidos")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
