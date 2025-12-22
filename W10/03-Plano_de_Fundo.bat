REM V3.01
ECHO "ALTERANDO PLANO DE FUNDO"

copy "C:\Padronizacao\Midia\Planos de fundo\Plano de Fundo (%vMaquinaIdentificacao%).JPG" "C:\Padronizacao\Midia\Planos de fundo\Plano de Fundo.JPG" /y
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters


REM Loop para atualizar o plano de fundo
set x=1
:while
if %x% leq 2005 (
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters 1, True
set /a "x = x + 1"
goto :while
)
goto end
