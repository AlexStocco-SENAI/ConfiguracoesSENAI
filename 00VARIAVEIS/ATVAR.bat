@echo off
setlocal EnableDelayedExpansion

REM Detecta a build do Windows usando PowerShell
for /f %%A in ('powershell -command "(Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion').CurrentBuild"') do (
    set BUILD=%%A
)

REM Define versão do Windows
if !BUILD! GEQ 22000 (
    set WINVER=W11
) else (
    set WINVER=W10
)

echo Windows detectado: %WINVER%

set "BASE_URL=https://alexstocco-senai.github.io/ConfiguracoesSENAI/%WINVER%/Estruturar"

@curl -LJO "%BASE_URL%/00VARIAVEIS/varRede.bat" > nul 2>&1
move varRede.bat "%vCaminho%\00VARIAVEIS\varRede.bat"
