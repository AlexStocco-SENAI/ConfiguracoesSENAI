@ECHO OFF

@ECHO OFF

REM Detecta versão do Windows (10 ou 11)
for /f "tokens=2 delims==" %%A in ('wmic os get BuildNumber /value ^| find "="') do set BUILD=%%A

if %BUILD% GEQ 22000 (
    set WINVER=W11
) else (
    set WINVER=W10
)

echo Windows detectado: %WINVER%

set "BASE_URL=https://alexstocco-senai.github.io/ConfiguracoesSENAI/%WINVER%/Estruturar"

@curl -LJO "%BASE_URL%/00VARIAVEIS/varRede.bat" > nul 2>&1
move varRede.bat "%vCaminho%\00VARIAVEIS\varRede.bat"
