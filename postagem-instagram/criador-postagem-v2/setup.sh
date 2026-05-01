#!/usr/bin/env bash
# ═══════════════════════════════════════════════════════════════════
#  Criador de Postagens v2 — Setup (Linux / macOS / WSL)
#  Uso: bash setup.sh
# ═══════════════════════════════════════════════════════════════════

# Não usar set -e: queremos tratar erros manualmente para auto-recuperação
set -uo pipefail

GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'
CYAN='\033[0;36m'; BOLD='\033[1m'; NC='\033[0m'

ok()   { echo -e "${GREEN}  OK  $1${NC}"; }
warn() { echo -e "${YELLOW}  AV  $1${NC}"; }
err()  { echo -e "${RED}  ER  $1${NC}"; }
step() { echo -e "\n${CYAN}${BOLD}▶  $1${NC}"; }
info() { echo -e "      ${NC}$1${NC}"; }

# Detecta sistema operacional
detect_os() {
    if [[ -f /proc/version ]] && grep -qi "microsoft" /proc/version 2>/dev/null; then
        echo "wsl"
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "mac"
    elif command -v apt-get &>/dev/null; then
        echo "debian"
    elif command -v dnf &>/dev/null; then
        echo "fedora"
    elif command -v pacman &>/dev/null; then
        echo "arch"
    else
        echo "unknown"
    fi
}

OS=$(detect_os)

echo ""
echo -e "${BOLD}╔══════════════════════════════════════════════════════╗${NC}"
echo -e "${BOLD}║        Criador de Postagens v2  —  Setup             ║${NC}"
echo -e "${BOLD}╚══════════════════════════════════════════════════════╝${NC}"
echo ""
info "Sistema detectado: $OS"

# ═══════════════════════════════════════════════════════════════
#  PASSO 1 — Python 3.10+
# ═══════════════════════════════════════════════════════════════
step "Verificando Python 3.10+..."

find_python() {
    for cmd in python3 python python3.12 python3.11 python3.10; do
        if command -v "$cmd" &>/dev/null; then
            ver=$("$cmd" -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")' 2>/dev/null)
            major=$(echo "$ver" | cut -d. -f1)
            minor=$(echo "$ver" | cut -d. -f2)
            if [ "$major" -gt 3 ] || { [ "$major" -eq 3 ] && [ "$minor" -ge 10 ]; }; then
                echo "$cmd"
                return 0
            fi
        fi
    done
    return 1
}

PYTHON_CMD=$(find_python || true)

if [ -z "$PYTHON_CMD" ]; then
    warn "Python 3.10+ nao encontrado. Tentando instalar automaticamente..."

    case "$OS" in
        debian|wsl)
            sudo apt-get update -qq
            sudo apt-get install -y python3 python3-pip python3-venv --quiet \
                || warn "apt falhou"
            ;;
        mac)
            if command -v brew &>/dev/null; then
                brew install python@3.12 --quiet
                export PATH="$(brew --prefix python@3.12)/bin:$PATH"
            else
                warn "Homebrew nao encontrado."
                info "Instale o Homebrew primeiro: https://brew.sh"
                info "Ou instale Python em: https://www.python.org/downloads/"
                exit 1
            fi
            ;;
        fedora)
            sudo dnf install -y python3 python3-pip --quiet || warn "dnf falhou"
            ;;
        arch)
            sudo pacman -Sy --noconfirm python python-pip || warn "pacman falhou"
            ;;
        *)
            err "Nao foi possivel instalar Python automaticamente."
            info "Instale Python 3.10+ em: https://www.python.org/downloads/"
            exit 1
            ;;
    esac

    PYTHON_CMD=$(find_python || true)
    if [ -z "$PYTHON_CMD" ]; then
        err "Python 3.10+ ainda nao encontrado apos tentativa de instalacao."
        info "Instale manualmente: https://www.python.org/downloads/"
        exit 1
    fi
fi

PY_VER=$("$PYTHON_CMD" --version 2>&1)
ok "$PY_VER  (comando: $PYTHON_CMD)"

# ═══════════════════════════════════════════════════════════════
#  PASSO 2 — Ambiente virtual
# ═══════════════════════════════════════════════════════════════
step "Configurando ambiente virtual (.venv)..."

if [ ! -d ".venv" ]; then
    # Tenta criar venv; se falhar, instala python3-venv e tenta de novo
    if ! "$PYTHON_CMD" -m venv .venv 2>/dev/null; then
        warn "python3-venv nao encontrado. Instalando..."
        case "$OS" in
            debian|wsl)
                PY_MINOR=$("$PYTHON_CMD" -c 'import sys; print(sys.version_info.minor)')
                PY_MAJOR=$("$PYTHON_CMD" -c 'import sys; print(sys.version_info.major)')
                sudo apt-get install -y "python${PY_MAJOR}.${PY_MINOR}-venv" --quiet 2>/dev/null \
                    || sudo apt-get install -y python3-venv --quiet
                ;;
            mac)
                brew install python@3 --quiet || true
                ;;
        esac
        "$PYTHON_CMD" -m venv .venv
    fi
    ok "Ambiente virtual criado em .venv/"
else
    ok "Ambiente virtual ja existe (.venv/)"
fi

# shellcheck source=/dev/null
source .venv/bin/activate
PYTHON_CMD="$PWD/.venv/bin/python"
ok "Ambiente virtual ativado"

# ═══════════════════════════════════════════════════════════════
#  PASSO 3 — Dependencias Python
# ═══════════════════════════════════════════════════════════════
step "Instalando dependencias Python..."

"$PYTHON_CMD" -m pip install --upgrade pip --quiet
"$PYTHON_CMD" -m pip install -r requirements.txt

if [ $? -ne 0 ]; then
    err "Falha ao instalar dependencias."
    info "Tente manualmente: source .venv/bin/activate && pip install -r requirements.txt"
    exit 1
fi
ok "playwright, jinja2, Pillow instalados"

# ═══════════════════════════════════════════════════════════════
#  PASSO 4 — Chromium
# ═══════════════════════════════════════════════════════════════
step "Baixando Chromium para renderizacao (pode demorar na 1a vez)..."

PLAYWRIGHT_BIN=".venv/bin/playwright"
CHROMIUM_OK=false

# Instala dependencias do sistema (Linux apenas) antes do chromium
if [[ "$OS" == "debian" || "$OS" == "wsl" ]]; then
    info "Instalando dependencias do sistema para o Playwright..."
    "$PYTHON_CMD" -m playwright install-deps chromium 2>/dev/null || true
fi

if "$PLAYWRIGHT_BIN" install chromium 2>/dev/null; then
    CHROMIUM_OK=true
elif "$PYTHON_CMD" -m playwright install chromium 2>/dev/null; then
    CHROMIUM_OK=true
fi

if $CHROMIUM_OK; then
    ok "Chromium baixado com sucesso"
else
    # Verifica se ha Chromium/Chrome no sistema
    SYSTEM_CHROME=""
    for candidate in \
        /usr/bin/chromium-browser \
        /usr/bin/chromium \
        /snap/bin/chromium \
        /usr/bin/google-chrome-stable \
        /usr/bin/google-chrome \
        "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"; do
        if [ -x "$candidate" ]; then
            SYSTEM_CHROME="$candidate"
            break
        fi
    done

    if [ -n "$SYSTEM_CHROME" ]; then
        ok "Chrome/Chromium do sistema encontrado: $SYSTEM_CHROME"
        warn "Playwright usara o navegador do sistema"
    else
        warn "Chromium nao instalado automaticamente."
        info "Se a geracao falhar, instale manualmente:"
        case "$OS" in
            debian|wsl) info "  sudo apt install chromium-browser" ;;
            mac)        info "  brew install --cask chromium" ;;
        esac
    fi
fi

# ═══════════════════════════════════════════════════════════════
#  PASSO 5 — Pasta de saida
# ═══════════════════════════════════════════════════════════════
step "Preparando pasta de saida..."
mkdir -p output
ok "Pasta output/ pronta"

# ═══════════════════════════════════════════════════════════════
#  PASSO 6 — Demo
# ═══════════════════════════════════════════════════════════════
step "Gerando carrossel de demonstracao (3 slides)..."
echo ""

"$PYTHON_CMD" main.py carousel \
    --json-file example_carousel.json \
    --output-dir output/
DEMO_EXIT=$?

# ═══════════════════════════════════════════════════════════════
#  RESULTADO
# ═══════════════════════════════════════════════════════════════
echo ""

if [ $DEMO_EXIT -eq 0 ]; then
    echo -e "${GREEN}${BOLD}╔══════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}${BOLD}║  Setup concluido! Imagens geradas em output/         ║${NC}"
    echo -e "${GREEN}${BOLD}╚══════════════════════════════════════════════════════╝${NC}"

    # Abre a pasta (quando possivel)
    if command -v xdg-open &>/dev/null; then
        xdg-open output/ 2>/dev/null &
    elif command -v open &>/dev/null; then
        open output/ 2>/dev/null &
    fi
else
    echo -e "${YELLOW}${BOLD}  Setup concluido, mas a demo falhou (veja erros acima).${NC}"
    info "O ambiente esta pronto — rode novamente quando resolver o erro."
fi

echo ""
echo -e "${BOLD}Como usar no futuro:${NC}"
echo ""
echo -e "  ${CYAN}Ativar ambiente e rodar:${NC}"
echo "    source .venv/bin/activate"
echo "    python main.py carousel --json-file example_carousel.json"
echo ""
echo -e "  ${CYAN}Postagem unica:${NC}"
echo '    python main.py single \'
echo '      --photo  "https://sua-foto.jpg" \'
echo '      --tag    "Dica #01" \'
echo '      --title  "Seu titulo" \'
echo '      --subtitle "Seu subtitulo" \'
echo '      --handle "@seuperfil"'
echo ""
