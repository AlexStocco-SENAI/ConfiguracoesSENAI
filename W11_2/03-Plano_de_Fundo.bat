REM V3.01
ECHO "ALTERANDO PLANO DE FUNDO"



copy "C:\Padronizacao\Midia\Planos de fundo\Plano de Fundo (%vMaquinaIdentificacao%).JPG" "C:\Padronizacao\Midia\Planos de fundo\Plano de Fundo.JPG" /y
copy "C:\Padronizacao\Midia\Planos de fundo\Plano de Fundo.JPG" "C:\Windows\Web\Wallpaper\Windows\img0.jpg" /y

set "WALLPAPER=C:\Padronizacao\Midia\Planos de fundo\Plano de Fundo.JPG"

REM Verifica se o arquivo existe
if not exist "%WALLPAPER%" (
    echo ERRO: Arquivo de plano de fundo não encontrado.
    exit /b 1
)

REM Define o papel de parede via PowerShell (método correto)
powershell -NoProfile -ExecutionPolicy Bypass -Command "Set-ItemProperty 'HKCU:\Control Panel\Desktop' -Name Wallpaper -Value '%WALLPAPER%'; rundll32.exe user32.dll,UpdatePerUserSystemParameters 1, True"

