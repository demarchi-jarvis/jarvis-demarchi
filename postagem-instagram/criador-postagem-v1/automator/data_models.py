from dataclasses import dataclass
from typing import Optional


@dataclass
class PostData:
    photo_url: str       # URL (https://) ou caminho local
    title: str
    subtitle: str
    tag: str
    handle: str          # sem @
    page_number: Optional[int] = None
    total_pages: Optional[int] = None
