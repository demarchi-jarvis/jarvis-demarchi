@echo off
title Criador de Postagens v2
cd /d "%~dp0"

if not exist ".venv\Scripts\python.exe" (
    echo.
    echo  Ambiente nao configurado. Execute setup.bat primeiro.
    echo.
    pause
    exit /b 1
)

echo.
echo  Gerando carrossel de demonstracao...
echo.

.venv\Scripts\python.exe main.py carousel --json-file example_carousel.json --output-dir output/

if %ERRORLEVEL% EQU 0 (
    echo.
    echo  Imagens geradas em output/
    echo.
    start "" "output"
) else (
    echo.
    echo  [ERRO] Verifique as mensagens acima.
    echo.
)

pause
