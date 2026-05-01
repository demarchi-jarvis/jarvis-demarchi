# ═══════════════════════════════════════════════════════════════════
#  Criador de Postagens v2 — Setup Windows (PowerShell)
#  Chame via setup.bat (clique duplo) ou:
#    PowerShell -ExecutionPolicy Bypass -File setup.ps1
# ═══════════════════════════════════════════════════════════════════

$ErrorActionPreference = "Continue"

# Garante que o diretório de trabalho é o da pasta do script
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location $ScriptDir

# ── Helpers de output ────────────────────────────────────────────
function Write-Step { param($msg) Write-Host "`n▶  $msg" -ForegroundColor Cyan }
function Write-OK   { param($msg) Write-Host "  OK  $msg" -ForegroundColor Green }
function Write-Warn { param($msg) Write-Host "  AV  $msg" -ForegroundColor Yellow }
function Write-Err  { param($msg) Write-Host "  ER  $msg" -ForegroundColor Red }
function Write-Info { param($msg) Write-Host "      $msg" -ForegroundColor Gray }

Write-Host ""
Write-Host "╔══════════════════════════════════════════════════════╗" -ForegroundColor White
Write-Host "║        Criador de Postagens v2  —  Setup             ║" -ForegroundColor White
Write-Host "╚══════════════════════════════════════════════════════╝" -ForegroundColor White
Write-Host ""

# ── Helper: atualiza PATH da sessão atual ────────────────────────
function Refresh-EnvPath {
    $machinePath = [System.Environment]::GetEnvironmentVariable("PATH", "Machine")
    $userPath    = [System.Environment]::GetEnvironmentVariable("PATH", "User")
    $env:PATH    = "$machinePath;$userPath"
}

# ── Helper: localiza Python 3.10+ ───────────────────────────────
function Find-Python {
    foreach ($cmd in @("python", "python3", "py")) {
        try {
            $raw = & $cmd --version 2>&1
            if ("$raw" -match "Python (\d+)\.(\d+)") {
                $major = [int]$Matches[1]; $minor = [int]$Matches[2]
                if ($major -gt 3 -or ($major -eq 3 -and $minor -ge 10)) {
                    return $cmd
                }
            }
        } catch {}
    }
    return $null
}

# ═══════════════════════════════════════════════════════════════
#  PASSO 1 — Python 3.10+
# ═══════════════════════════════════════════════════════════════
Write-Step "Verificando Python 3.10+..."

$pythonCmd = Find-Python

if (-not $pythonCmd) {
    Write-Warn "Python 3.10+ nao encontrado."

    # Tenta winget (Windows 10 1809+ / Windows 11)
    if (Get-Command winget -ErrorAction SilentlyContinue) {
        Write-Info "Instalando Python 3.12 via winget (pode demorar ~1 minuto)..."
        winget install --id Python.Python.3.12 -e `
            --accept-package-agreements --accept-source-agreements 2>&1 | Out-Null
        Refresh-EnvPath
        $pythonCmd = Find-Python
    }

    if (-not $pythonCmd) {
        Write-Err "Nao foi possivel instalar Python automaticamente."
        Write-Host ""
        Write-Host "  Acesse: https://www.python.org/downloads/" -ForegroundColor Yellow
        Write-Host "  IMPORTANTE: marque 'Add Python to PATH' durante a instalacao!" -ForegroundColor Yellow
        Write-Host ""
        $resp = Read-Host "  Pressione ENTER para abrir o site, ou Ctrl+C para cancelar"
        Start-Process "https://www.python.org/downloads/"
        Write-Host "  Apos instalar, execute setup.bat novamente." -ForegroundColor White
        Read-Host "  Pressione ENTER para fechar"
        exit 1
    }
}

$pyVerStr = (& $pythonCmd --version 2>&1)
Write-OK "$pyVerStr encontrado  (comando: $pythonCmd)"

# ═══════════════════════════════════════════════════════════════
#  PASSO 2 — pip
# ═══════════════════════════════════════════════════════════════
Write-Step "Verificando pip..."
$pipCheck = & $pythonCmd -m pip --version 2>&1
if ($LASTEXITCODE -ne 0) {
    Write-Warn "pip nao encontrado. Instalando via ensurepip..."
    & $pythonCmd -m ensurepip --upgrade 2>&1 | Out-Null
}
Write-OK "pip disponivel"

# ═══════════════════════════════════════════════════════════════
#  PASSO 3 — Ambiente virtual
# ═══════════════════════════════════════════════════════════════
Write-Step "Configurando ambiente virtual (.venv)..."

if (-not (Test-Path ".venv")) {
    & $pythonCmd -m venv .venv
    if ($LASTEXITCODE -ne 0) {
        Write-Err "Falha ao criar venv."
        exit 1
    }
    Write-OK "Ambiente virtual criado em .venv/"
} else {
    Write-OK "Ambiente virtual ja existe (.venv/)"
}

# Caminho dos binarios dentro do venv
$venvPy  = Join-Path $ScriptDir ".venv\Scripts\python.exe"
$venvPip = Join-Path $ScriptDir ".venv\Scripts\pip.exe"
$venvPw  = Join-Path $ScriptDir ".venv\Scripts\playwright.exe"

# Validacao
if (-not (Test-Path $venvPy)) {
    Write-Err "python.exe nao encontrado no venv. Verifique a instalacao do Python."
    exit 1
}
Write-OK "Venv validado: $venvPy"

# ═══════════════════════════════════════════════════════════════
#  PASSO 4 — Dependencias Python
# ═══════════════════════════════════════════════════════════════
Write-Step "Instalando dependencias Python..."

& $venvPy -m pip install --upgrade pip --quiet
& $venvPy -m pip install -r requirements.txt

if ($LASTEXITCODE -ne 0) {
    Write-Err "Falha ao instalar dependencias."
    Write-Info "Tente rodar manualmente:"
    Write-Info "  .venv\Scripts\pip install -r requirements.txt"
    Read-Host "Pressione ENTER para fechar"
    exit 1
}
Write-OK "playwright, jinja2, Pillow instalados"

# ═══════════════════════════════════════════════════════════════
#  PASSO 5 — Chromium
# ═══════════════════════════════════════════════════════════════
Write-Step "Baixando Chromium para renderizacao (pode demorar na 1a vez)..."

$chromiumOk = $false

if (Test-Path $venvPw) {
    & $venvPw install chromium 2>&1
    if ($LASTEXITCODE -eq 0) { $chromiumOk = $true }
}

if (-not $chromiumOk) {
    # Tenta pelo modulo python
    & $venvPy -m playwright install chromium 2>&1
    if ($LASTEXITCODE -eq 0) { $chromiumOk = $true }
}

if ($chromiumOk) {
    Write-OK "Chromium baixado com sucesso"
} else {
    Write-Warn "Nao foi possivel baixar Chromium automaticamente."
    Write-Info "Se a geracao falhar, instale o Chrome/Chromium e tente novamente."
    Write-Info "  https://www.google.com/chrome/"
}

# ═══════════════════════════════════════════════════════════════
#  PASSO 6 — Pasta de saida
# ═══════════════════════════════════════════════════════════════
Write-Step "Preparando pasta de saida..."
New-Item -ItemType Directory -Force -Path "output" | Out-Null
Write-OK "Pasta output/ pronta"

# ═══════════════════════════════════════════════════════════════
#  PASSO 7 — Demo
# ═══════════════════════════════════════════════════════════════
Write-Step "Gerando carrossel de demonstracao (3 slides)..."
Write-Host ""

& $venvPy main.py carousel --json-file example_carousel.json --output-dir output/
$demoOk = ($LASTEXITCODE -eq 0)

# ═══════════════════════════════════════════════════════════════
#  RESULTADO
# ═══════════════════════════════════════════════════════════════
Write-Host ""

if ($demoOk) {
    Write-Host "╔══════════════════════════════════════════════════════╗" -ForegroundColor Green
    Write-Host "║  Setup concluido! Imagens geradas em output/         ║" -ForegroundColor Green
    Write-Host "╚══════════════════════════════════════════════════════╝" -ForegroundColor Green
    Write-Host ""

    # Abre a pasta output no Explorer
    $outputPath = Join-Path $ScriptDir "output"
    Start-Process "explorer.exe" -ArgumentList $outputPath
} else {
    Write-Warn "Setup concluido, mas a demo falhou (verifique os erros acima)."
    Write-Info "O ambiente esta pronto — execute run.bat para tentar novamente."
}

Write-Host ""
Write-Host "Como usar no futuro:" -ForegroundColor White
Write-Host ""
Write-Host "  Clique duplo em run.bat  (roda o projeto sem reinstalar tudo)" -ForegroundColor Cyan
Write-Host ""
Write-Host "  Ou no terminal, apos ativar o venv:" -ForegroundColor Cyan
Write-Host "    .venv\Scripts\activate" -ForegroundColor Gray
Write-Host "    python main.py carousel --json-file example_carousel.json" -ForegroundColor Gray
Write-Host ""

Read-Host "Pressione ENTER para fechar"
