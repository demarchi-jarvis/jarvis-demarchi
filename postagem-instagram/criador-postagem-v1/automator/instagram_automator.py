from pathlib import Path
from typing import List

from .data_models import PostData
from .html_generator import HTMLGenerator
from .image_exporter import ImageExporter

# base sempre aponta para criador-postagem-v1/
_BASE_DIR = Path(__file__).parent.parent


class InstagramAutomator:
    def __init__(
        self,
        output_dir: str = "output",
        templates_dir: str = "templates",
    ):
        self.output_dir = _BASE_DIR / output_dir
        self.generator = HTMLGenerator(str(_BASE_DIR / templates_dir))
        self.exporter = ImageExporter()

    # ── Single Post ─────────────────────────────────────────────────────────

    def create_post(self, post: PostData, filename: str = "post.png") -> str:
        print(f"\n[Post] Gerando → {filename}")
        html = self.generator.render(post)
        return self.exporter.export(html, str(self.output_dir / filename))

    # ── Carousel ─────────────────────────────────────────────────────────────

    def create_carousel(
        self,
        posts: List[PostData],
        prefix: str = "carousel",
    ) -> List[str]:
        total = len(posts)
        print(f"\n[Carousel] {total} slides — prefix: {prefix}")

        paths: List[str] = []
        for i, post in enumerate(posts, start=1):
            post.page_number = i
            post.total_pages = total
            path = self.create_post(post, f"{prefix}_{i:02d}.png")
            paths.append(path)

        print(f"\n[Carousel] Concluído → {total} imagens em '{self.output_dir}/'")
        return paths
