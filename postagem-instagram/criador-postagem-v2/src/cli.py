from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

from .models import PostData
from .template_engine import TemplateEngine
from .image_renderer import PlaywrightRenderer
from .post_generator import PostGenerator


def _build_generator() -> PostGenerator:
    base_dir = Path(__file__).parent.parent
    engine = TemplateEngine(template_dir=base_dir / "templates")
    renderer = PlaywrightRenderer()
    return PostGenerator(engine, renderer)


def _cmd_single(args: argparse.Namespace) -> None:
    gen = _build_generator()
    data = PostData(
        photo=args.photo,
        tag=args.tag,
        title=args.title,
        subtitle=args.subtitle,
        handle=args.handle,
    )
    path = gen.single_post(data, args.output)
    print(f"Gerado: {path.resolve()}")


def _cmd_carousel(args: argparse.Namespace) -> None:
    gen = _build_generator()
    raw = json.loads(Path(args.json_file).read_text(encoding="utf-8"))
    data_list = [PostData(**slide) for slide in raw]
    paths = gen.carousel_post(data_list, args.output_dir)
    for p in paths:
        print(f"Gerado: {p.resolve()}")


def main() -> None:
    parser = argparse.ArgumentParser(
        prog="postagem-v2",
        description="Criador de Postagens Instagram v2",
    )
    sub = parser.add_subparsers(dest="command", required=True)

    # ── single ──
    p_single = sub.add_parser("single", help="Gera uma única postagem")
    p_single.add_argument("--photo",    required=True, help="URL ou caminho local da imagem de fundo")
    p_single.add_argument("--tag",      required=True, help="Texto da pílula (ex: Dica #01)")
    p_single.add_argument("--title",    required=True, help="Título em laranja")
    p_single.add_argument("--subtitle", required=True, help="Subtítulo em branco")
    p_single.add_argument("--handle",   required=True, help="@handle do Instagram")
    p_single.add_argument("--output",   default="output/post.png", help="Arquivo de saída (padrão: output/post.png)")

    # ── carousel ──
    p_car = sub.add_parser("carousel", help="Gera carrossel a partir de um arquivo JSON")
    p_car.add_argument("--json-file",   required=True, help="JSON com lista de slides")
    p_car.add_argument("--output-dir",  default="output", help="Pasta de saída (padrão: output/)")

    args = parser.parse_args()

    if args.command == "single":
        _cmd_single(args)
    elif args.command == "carousel":
        _cmd_carousel(args)
    else:
        parser.print_help()
        sys.exit(1)
