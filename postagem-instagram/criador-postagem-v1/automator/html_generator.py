import base64
from pathlib import Path

import requests
from jinja2 import Environment, FileSystemLoader

from .data_models import PostData


class HTMLGenerator:
    def __init__(self, templates_dir: str):
        self.env = Environment(
            loader=FileSystemLoader(templates_dir),
            autoescape=True,
        )

    def _encode_photo(self, photo_url: str) -> str:
        if photo_url.startswith(("http://", "https://")):
            r = requests.get(photo_url, timeout=15)
            r.raise_for_status()
            ctype = r.headers.get("content-type", "image/jpeg").split(";")[0]
            b64 = base64.b64encode(r.content).decode()
            return f"data:{ctype};base64,{b64}"

        path = Path(photo_url)
        if not path.exists():
            raise FileNotFoundError(f"Foto não encontrada: {photo_url}")

        mime_map = {
            "jpg": "image/jpeg", "jpeg": "image/jpeg",
            "png": "image/png",  "webp": "image/webp",
        }
        mime = mime_map.get(path.suffix.lower().lstrip("."), "image/jpeg")
        b64 = base64.b64encode(path.read_bytes()).decode()
        return f"data:{mime};base64,{b64}"

    def render(self, post: PostData) -> str:
        is_carousel = bool(post.total_pages and post.total_pages > 1)
        show_arrow = is_carousel and post.page_number is not None and post.page_number < (post.total_pages or 1)

        return self.env.get_template("card.html.j2").render(
            photo_data=self._encode_photo(post.photo_url),
            title=post.title,
            subtitle=post.subtitle,
            tag=post.tag,
            handle=post.handle,
            is_carousel=is_carousel,
            show_arrow=show_arrow,
            page_number=post.page_number or 1,
            total_pages=post.total_pages or 1,
        )
