import shutil
from pathlib import Path

from playwright.sync_api import sync_playwright, TimeoutError as PWTimeout

# Usa o Chromium do sistema se o Playwright ainda não baixou o próprio browser
_SYSTEM_CHROMIUM = shutil.which("chromium-browser") or shutil.which("chromium") or shutil.which("google-chrome")


class ImageExporter:
    WIDTH = 1080
    HEIGHT = 1350

    def export(self, html_content: str, output_path: str) -> str:
        out = Path(output_path)
        out.parent.mkdir(parents=True, exist_ok=True)

        launch_opts = {"args": ["--no-sandbox", "--disable-setuid-sandbox"]}
        if _SYSTEM_CHROMIUM:
            launch_opts["executable_path"] = _SYSTEM_CHROMIUM

        with sync_playwright() as p:
            browser = p.chromium.launch(**launch_opts)
            page = browser.new_page(
                viewport={"width": self.WIDTH, "height": self.HEIGHT}
            )

            try:
                page.set_content(html_content, wait_until="networkidle", timeout=15_000)
            except PWTimeout:
                # fallback caso fontes externas demorem
                page.set_content(html_content, wait_until="domcontentloaded")

            page.screenshot(
                path=str(out),
                clip={"x": 0, "y": 0, "width": self.WIDTH, "height": self.HEIGHT},
            )
            browser.close()

        print(f"  → Exportado: {out}")
        return str(out)
