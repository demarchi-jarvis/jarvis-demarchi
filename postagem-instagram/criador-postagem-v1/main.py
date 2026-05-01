#!/usr/bin/env python3
"""
Exemplo de uso do InstagramAutomator.
Execute: python main.py
"""
from automator import InstagramAutomator, PostData

HANDLE = "demarchi.dev"

# Foto pública de tecnologia (Unsplash)
TECH_PHOTO_1 = "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=1080&q=85"
TECH_PHOTO_2 = "https://images.unsplash.com/photo-1518770660439-4636190af475?w=1080&q=85"
TECH_PHOTO_3 = "https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=1080&q=85"
TECH_PHOTO_4 = "https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=1080&q=85"


def demo_single_post():
    automator = InstagramAutomator()

    post = PostData(
        photo_url=TECH_PHOTO_1,
        title="Machine Learning está redefinindo o desenvolvimento",
        subtitle="Como LLMs estão mudando o fluxo de trabalho de engenheiros de software em 2025.",
        tag="IA & Tecnologia",
        handle=HANDLE,
    )

    path = automator.create_post(post, "post_single.png")
    print(f"Post gerado: {path}")


def demo_carousel():
    automator = InstagramAutomator()

    slides = [
        PostData(
            photo_url=TECH_PHOTO_2,
            title="5 Tendências Tech para dominar em 2025",
            subtitle="O que todo engenheiro precisa saber para se manter relevante nos próximos meses.",
            tag="Carreira Tech",
            handle=HANDLE,
        ),
        PostData(
            photo_url=TECH_PHOTO_3,
            title="Cloud Native é o novo padrão de mercado",
            subtitle="Kubernetes, microserviços e GitOps dominam a arquitetura de sistemas modernos.",
            tag="Cloud & DevOps",
            handle=HANDLE,
        ),
        PostData(
            photo_url=TECH_PHOTO_4,
            title="A ascensão do engenheiro Full-Stack",
            subtitle="Dominar front-end, back-end e cloud virou diferencial competitivo real.",
            tag="Desenvolvimento",
            handle=HANDLE,
        ),
    ]

    paths = automator.create_carousel(slides, prefix="carousel_tech")
    print(f"\nTotal: {len(paths)} imagens geradas.")


if __name__ == "__main__":
    print("=" * 48)
    print("  InstagramAutomator — Demo")
    print("=" * 48)

    demo_single_post()
    demo_carousel()

    print("\nDone. Verifique a pasta output/")
