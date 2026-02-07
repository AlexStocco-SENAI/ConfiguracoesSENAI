REM V3.01
ECHO "ALTERANDO PLANO DE FUNDO"



copy "C:\Padronizacao\Midia\Planos de fundo\Plano de Fundo (%vMaquinaIdentificacao%).JPG" "C:\Padronizacao\Midia\Planos de fundo\Plano de Fundo.JPG" /y
copy "C:\Padronizacao\Midia\Planos de fundo\Plano de Fundo.JPG" "C:\Users\SENAI\AppData\Roaming\Microsoft\Windows\Themes\TranscodedWallpaper" /y

set "BASE_URL=https://alexstocco-senai.github.io/ConfiguracoesSENAI/%WINVER%"

curl -L "https://alexstocco-senai.github.io/ConfiguracoesSENAI/W11_2/SENAI.theme" -o "C:\Padronizacao\Midia\Planos de fundo\SENAI.theme"

start "" "C:\Padronizacao\Midia\Planos de fundo\SENAI.theme"

set "WALLPAPER=C:\Padronizacao\Midia\Planos de fundo\Plano de Fundo.JPG"

REM Verifica se o arquivo existe
if not exist "%WALLPAPER%" (
    echo ERRO: Arquivo de plano de fundo não encontrado.
    exit /b 1
)

REM Define o papel de parede via PowerShell (método correto)
powershell -NoProfile -ExecutionPolicy Bypass -Command "Set-ItemProperty 'HKCU:\Control Panel\Desktop' -Name Wallpaper -Value '%WALLPAPER%'; rundll32.exe user32.dll,UpdatePerUserSystemParameters 1, True"









