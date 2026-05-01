from __future__ import annotations

from abc import ABC, abstractmethod
from pathlib import Path

# Caminhos comuns de Chromium em Linux/Mac — usados quando o Playwright
# não tem seu próprio browser baixado (ex: ambientes com rede restrita).
_SYSTEM_CHROMIUM_CANDIDATES = [
    "/usr/bin/chromium-browser",
    "/usr/bin/chromium",
    "/snap/bin/chromium",
    "/usr/bin/google-chrome-stable",
    "/usr/bin/google-chrome",
    "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome",
]


def _find_system_chromium() -> str | None:
    for path in _SYSTEM_CHROMIUM_CANDIDATES:
        if Path(path).exists():
            return path
    return None


class ImageRenderer(ABC):
    """Protocolo de renderização — troque a implementação sem alterar a lógica de negócio."""

    WIDTH = 1080
    HEIGHT = 1350

    @abstractmethod
    def render(self, html: str, output_path: str | Path) -> Path:
        """Recebe HTML e salva a imagem em output_path. Retorna o Path final."""


class PlaywrightRenderer(ImageRenderer):
    """Renderiza HTML para PNG via Chromium headless (Playwright).

    Tenta o browser embutido do Playwright primeiro; se não encontrar,
    faz fallback automático para o Chromium do sistema operacional.
    """

    def render(self, html: str, output_path: str | Path) -> Path:
        from playwright.sync_api import sync_playwright, Error as PlaywrightError

        output = Path(output_path)
        output.parent.mkdir(parents=True, exist_ok=True)

        launch_kwargs: dict = {"headless": True}

        with sync_playwright() as p:
            try:
                browser = p.chromium.launch(**launch_kwargs)
            except PlaywrightError:
                system_exe = _find_system_chromium()
                if not system_exe:
                    raise RuntimeError(
                        "Chromium não encontrado. Execute: playwright install chromium"
                    )
                browser = p.chromium.launch(executable_path=system_exe, **launch_kwargs)

            page = browser.new_page(
                viewport={"width": self.WIDTH, "height": self.HEIGHT},
            )
            # wait_until="networkidle" garante que Google Fonts carregue antes do screenshot
            page.set_content(html, wait_until="networkidle")
            page.screenshot(
                path=str(output),
                clip={"x": 0, "y": 0, "width": self.WIDTH, "height": self.HEIGHT},
            )
            browser.close()

        return output
