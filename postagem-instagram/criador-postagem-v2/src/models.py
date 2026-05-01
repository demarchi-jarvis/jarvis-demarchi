from __future__ import annotations

from dataclasses import dataclass, field


@dataclass
class PostData:
    photo: str      # URL (http/https) ou caminho local do arquivo
    tag: str
    title: str
    subtitle: str
    handle: str
    current_page: int = 0
    total_pages: int = 1
