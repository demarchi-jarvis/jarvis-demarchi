# Criador de Postagens v2

Ferramenta Python que gera postagens e carrosséis para Instagram de forma automatizada.  
Você fornece uma foto, texto e handle — a ferramenta devolve uma imagem `1080x1350px` pronta para publicar.

---

## Como funciona

O projeto converte um input de dados (foto + texto) em uma imagem PNG de alta qualidade usando **renderização HTML/CSS → screenshot via Chromium headless**.

```
Você fornece:          A ferramenta gera:
─────────────          ──────────────────
foto (URL ou arquivo)  ┐
tag (pílula)           │  → HTML/CSS (Jinja2)  →  Screenshot PNG 1080x1350px
título                 │
subtítulo              ┘
@handle
```

### Arquitetura (3 camadas independentes)

| Camada | Arquivo | Responsabilidade |
|---|---|---|
| **TemplateEngine** | `src/template_engine.py` | Monta o HTML/CSS com Jinja2. Resolve foto local (base64) ou URL |
| **ImageRenderer** | `src/image_renderer.py` | Converte HTML em PNG via Playwright (Chromium headless) |
| **PostGenerator** | `src/post_generator.py` | Orquestra as camadas. Expõe `single_post()` e `carousel_post()` |
| **CLI** | `src/cli.py` | Interface de linha de comando com subcomandos `single` e `carousel` |

> O `ImageRenderer` é uma classe abstrata — você pode trocar o Playwright por Pillow, WeasyPrint ou qualquer outro renderizador sem alterar o restante do código.

---

## Design das imagens

Cada imagem segue um padrão fixo de design:

```
┌─────────────────────────────┐
│                             │
│    FOTO DE FUNDO (55%)      │
│    + gradiente fade-to-black│
│                             │
├─────────────────────────────┤
│  [TAG]          ← pílula azul
│                             │
│  Título em laranja          │  45% preto sólido
│  Extra Bold                 │  padding 80px
│                             │
│  Subtítulo em branco        │
│                             │
│  @handle        ● ○ ○ dots  │
└─────────────────────────────┘
```

| Elemento | Cor | Fonte |
|---|---|---|
| Título | `#D35400` (laranja) | Montserrat Extra Bold |
| Subtítulo | `rgba(255,255,255,0.9)` | Montserrat Regular |
| Tag (pílula) | `#1A4A8E` (azul) | Montserrat Regular |
| Footer / handle | Outline branco | Montserrat Regular |
| Fundo base | `#000000` | — |

---

## Pré-requisitos

- Python 3.10 ou superior
- pip
- Git

---

## Instalação

### 1. Clone o repositório

```bash
git clone https://github.com/demarchi-jarvis/jarvis-demarchi.git
cd jarvis-demarchi/postagem-instagram/criador-postagem-v2
```

### 2. (Opcional) Crie um ambiente virtual

```bash
python3 -m venv .venv
source .venv/bin/activate   # Linux/Mac
.venv\Scripts\activate      # Windows
```

### 3. Instale as dependências

```bash
pip install -r requirements.txt
```

### 4. Instale o browser do Playwright

```bash
playwright install chromium
```

> Se estiver em um ambiente com rede restrita e o comando acima falhar, instale o Chromium pelo sistema operacional (`apt install chromium-browser` no Ubuntu) — a ferramenta detecta automaticamente.

---

## Tutorial de uso

### Postagem única

Gera um único arquivo PNG.

```bash
python3 main.py single \
  --photo "https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=1080" \
  --tag "Dica #01" \
  --title "Por que todo dev deveria aprender Cloud?" \
  --subtitle "A infraestrutura mudou. Quem domina AWS ou Azure entrega mais rápido e cobra mais." \
  --handle "@seuperfil" \
  --output "output/minha_postagem.png"
```

**Parâmetros:**

| Parâmetro | Obrigatório | Descrição |
|---|---|---|
| `--photo` | ✅ | URL pública ou caminho local da imagem de fundo |
| `--tag` | ✅ | Texto da pílula (ex: `Dica #01`, `Novidade`, `Tutorial`) |
| `--title` | ✅ | Título principal em laranja |
| `--subtitle` | ✅ | Texto de apoio em branco |
| `--handle` | ✅ | Seu @ do Instagram (ex: `@seuperfil`) |
| `--output` | ❌ | Caminho do arquivo de saída (padrão: `output/post.png`) |

---

### Carrossel

Gera múltiplos slides numerados (`slide_01.png`, `slide_02.png`, ...) com indicadores de dots automáticos.

**1. Crie um arquivo JSON com os slides:**

```json
[
  {
    "photo": "https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=1080",
    "tag": "Dica #01",
    "title": "Título do primeiro slide",
    "subtitle": "Descrição do conteúdo deste slide.",
    "handle": "@seuperfil"
  },
  {
    "photo": "https://images.unsplash.com/photo-1555949963-aa79dcee981c?w=1080",
    "tag": "Dica #02",
    "title": "Título do segundo slide",
    "subtitle": "Descrição do conteúdo deste slide.",
    "handle": "@seuperfil"
  },
  {
    "photo": "https://images.unsplash.com/photo-1518770660439-4636190af475?w=1080",
    "tag": "Dica #03",
    "title": "Título do terceiro slide",
    "subtitle": "Descrição do conteúdo deste slide.",
    "handle": "@seuperfil"
  }
]
```

**2. Execute:**

```bash
python3 main.py carousel \
  --json-file meus_slides.json \
  --output-dir output/
```

**Parâmetros:**

| Parâmetro | Obrigatório | Descrição |
|---|---|---|
| `--json-file` | ✅ | Caminho do arquivo JSON com a lista de slides |
| `--output-dir` | ❌ | Pasta de saída (padrão: `output/`) |

O repositório já inclui um arquivo de exemplo pronto para testar:

```bash
python3 main.py carousel --json-file example_carousel.json
```

---

### Usando foto local

Você pode usar uma imagem salva no seu computador no lugar de uma URL:

```bash
python3 main.py single \
  --photo "/caminho/para/sua/foto.jpg" \
  --tag "Portfolio" \
  --title "Meu projeto favorito" \
  --subtitle "Descrição do projeto que você quer mostrar." \
  --handle "@seuperfil"
```

---

## Usando como biblioteca Python

```python
from src import PostData, PostGenerator, TemplateEngine, PlaywrightRenderer
from pathlib import Path

gen = PostGenerator(
    engine=TemplateEngine(template_dir="templates"),
    renderer=PlaywrightRenderer(),
)

# Postagem única
gen.single_post(
    PostData(
        photo="https://...",
        tag="Dica #01",
        title="Título",
        subtitle="Subtítulo",
        handle="@seuperfil",
    ),
    output_path="output/post.png",
)

# Carrossel
slides = [
    PostData(photo="...", tag="Slide 1", title="...", subtitle="...", handle="@seuperfil"),
    PostData(photo="...", tag="Slide 2", title="...", subtitle="...", handle="@seuperfil"),
]
gen.carousel_post(slides, output_dir="output/")
```

---

## Estrutura do projeto

```
criador-postagem-v2/
├── src/
│   ├── __init__.py          # API pública do pacote
│   ├── models.py            # PostData — modelo de entrada
│   ├── template_engine.py   # Monta o HTML/CSS com Jinja2
│   ├── image_renderer.py    # Converte HTML em PNG (Playwright)
│   ├── post_generator.py    # single_post() e carousel_post()
│   └── cli.py               # Interface de linha de comando
├── templates/
│   └── post.html.j2         # Template HTML/CSS da postagem
├── example_carousel.json    # Exemplo de carrossel com 3 slides
├── main.py                  # Entrypoint
└── requirements.txt
```

---

## Resultado esperado

Após executar qualquer comando, os arquivos PNG são salvos na pasta `output/`:

```
output/
├── post.png          ← postagem única
├── slide_01.png      ← carrossel slide 1 (dot ativo: ●○○)
├── slide_02.png      ← carrossel slide 2 (dot ativo: ○●○)
└── slide_03.png      ← carrossel slide 3 (dot ativo: ○○●)
```

Todos os arquivos: **1080x1350px · RGB · ~700-900 KB · prontos para o Instagram**.
