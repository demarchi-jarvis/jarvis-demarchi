"""
Carrega a fonte Montserrat (variable font) como base64.
Faz cache local em fonts/montserrat.json para não depender de rede em cada run.
"""
import base64
import json
import re
import urllib.request
from pathlib import Path

_CACHE = Path(__file__).parent.parent / "fonts" / "montserrat.json"
_HEADERS = {"User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 Chrome/120"}


def _fetch(url: str) -> bytes:
    req = urllib.request.Request(url, headers=_HEADERS)
    with urllib.request.urlopen(req, timeout=15) as r:
        return r.read()


def _download() -> str:
    css = _fetch(
        "https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;800&display=swap"
    ).decode()
    # Pega a primeira URL woff2 do bloco latin
    match = re.search(
        r"/\* latin \*/\s*@font-face\s*\{[^}]*url\((https://[^)]+\.woff2)\)", css
    )
    if not match:
        raise RuntimeError("URL da fonte Montserrat não encontrada no CSS do Google Fonts.")
    font_url = match.group(1)
    data = _fetch(font_url)
    return base64.b64encode(data).decode()


def get_font_b64() -> str:
    """Retorna o base64 da fonte Montserrat (com cache local)."""
    if _CACHE.exists():
        stored = json.loads(_CACHE.read_text())
        # qualquer peso serve — é um variable font
        return next(iter(stored.values()))

    try:
        _CACHE.parent.mkdir(parents=True, exist_ok=True)
        b64 = _download()
        _CACHE.write_text(json.dumps({"400": b64}))
        return b64
    except Exception as exc:
        print(f"  [Warning] Fonte Montserrat indisponível ({exc}). Usando fallback.")
        return ""


def get_font_face_css() -> str:
    """Retorna a declaração @font-face completa para embedar no HTML."""
    b64 = get_font_b64()
    if not b64:
        return ""
    return (
        "@font-face {"
        " font-family: 'Montserrat';"
        " font-style: normal;"
        " font-weight: 100 900;"   # variable font cobre todo o range
        f" src: url(data:font/woff2;base64,{b64}) format('woff2');"
        " }"
    )
