@ECHO OFF

REM Detecta versão do Windows (10 ou 11)
for /f "tokens=2 delims==" %A in ('wmic os get BuildNumber /value ^| find "="') do set BUILD=%A

if %BUILD% GEQ 22000 (
    set WINVER=W11
) else (
    set WINVER=W10
)

echo Windows detectado: %WINVER%

set "BASE_URL=https://alexstocco-senai.github.io/ConfiguracoesSENAI/%WINVER%/Estruturar"


@curl -LJO "%BASE_URL%/00-INICIO.bat" > nul 2>&1
@curl -LJO "%BASE_URL%/02-Identificacao.bat" > nul 2>&1
@curl -LJO "%BASE_URL%/03-Plano_de_Fundo.bat" > nul 2>&1
@curl -LJO "%BASE_URL%/04-Conexao.bat" > nul 2>&1
@curl -LJO "%BASE_URL%/05-Programas.bat" > nul 2>&1
@curl -LJO "%BASE_URL%/06-Bloqueios.bat" > nul 2>&1
@curl -LJO "%BASE_URL%/07-LanSchool.bat" > nul 2>&1
@curl -LJO "%BASE_URL%/08-Particao.bat" > nul 2>&1

