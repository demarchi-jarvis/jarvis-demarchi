from __future__ import annotations

import base64
import mimetypes
from pathlib import Path

from jinja2 import Environment, FileSystemLoader

from .models import PostData


class TemplateEngine:
    """Converte PostData em HTML/CSS pronto para renderização."""

    def __init__(self, template_dir: str | Path = "templates") -> None:
        self.env = Environment(
            loader=FileSystemLoader(str(template_dir)),
            autoescape=True,
        )

    def _resolve_photo(self, photo: str) -> str:
        if photo.startswith(("http://", "https://")):
            return photo
        path = Path(photo).resolve()
        if not path.exists():
            raise FileNotFoundError(f"Foto não encontrada: {photo}")
        mime, _ = mimetypes.guess_type(str(path))
        encoded = base64.b64encode(path.read_bytes()).decode()
        return f"data:{mime or 'image/jpeg'};base64,{encoded}"

    def render(self, data: PostData) -> str:
        template = self.env.get_template("post.html.j2")
        return template.render(
            photo_src=self._resolve_photo(data.photo),
            tag=data.tag,
            title=data.title,
            subtitle=data.subtitle,
            handle=data.handle,
            current_page=data.current_page,
            total_pages=data.total_pages,
            show_dots=data.total_pages > 1,
        )
