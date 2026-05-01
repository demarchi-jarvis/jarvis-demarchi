@echo off
title Criador de Postagens v2 - Setup
cd /d "%~dp0"

echo.
echo  Iniciando setup...
echo.

:: Tenta executar via PowerShell com bypass de politica de execucao
PowerShell -NoProfile -ExecutionPolicy Bypass -File "%~dp0setup.ps1"

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo  [ERRO] Setup encerrou com falha. Verifique as mensagens acima.
    echo.
    pause
)
