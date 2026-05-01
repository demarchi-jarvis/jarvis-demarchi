from __future__ import annotations

from pathlib import Path
from typing import List

from .models import PostData
from .template_engine import TemplateEngine
from .image_renderer import ImageRenderer


class PostGenerator:
    """Orquestra TemplateEngine + ImageRenderer. Único ponto de entrada para geração."""

    def __init__(self, engine: TemplateEngine, renderer: ImageRenderer) -> None:
        self.engine = engine
        self.renderer = renderer

    def single_post(
        self,
        data: PostData,
        output_path: str | Path = "output/post.png",
    ) -> Path:
        html = self.engine.render(data)
        return self.renderer.render(html, output_path)

    def carousel_post(
        self,
        data_list: List[PostData],
        output_dir: str | Path = "output",
    ) -> List[Path]:
        total = len(data_list)
        paths: List[Path] = []
        for i, data in enumerate(data_list):
            data.current_page = i
            data.total_pages = total
            output_path = Path(output_dir) / f"slide_{i + 1:02d}.png"
            paths.append(self.single_post(data, output_path))
        return paths
