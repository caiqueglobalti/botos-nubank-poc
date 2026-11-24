"""Start this project's local BotOS panel independently of another MCP workspace."""

from pathlib import Path
import sys
from threading import Event


ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / ".botos" / "plugin"))

import server  # noqa: E402


if __name__ == "__main__":
    print(server.ensure_local(str(ROOT)), flush=True)
    try:
        Event().wait()
    except KeyboardInterrupt:
        pass
