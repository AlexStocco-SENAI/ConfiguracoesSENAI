@echo off
echo Elevando usuario SENAI para ADMIN...

net localgroup Administradores SENAI /add

if %errorlevel%==0 (
    echo Usuario SENAI agora e ADMINISTRADOR.
) else (
    echo ERRO ao alterar o usuario SENAI.
)


REM HABILITANDO ATUALIZAÇÃO

"C:\Padronizacao\0MANUTENCAO\Wub\Wub_x64.exe /E"  /enableupdates


echo ================================
echo  INICIANDO ATUALIZACAO WINDOWS
echo ================================
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"if (-not (Get-Module -ListAvailable -Name PSWindowsUpdate)) { ^
    Install-Module PSWindowsUpdate -Force -Scope AllUsers ^
} ^
Import-Module PSWindowsUpdate; ^
Install-WindowsUpdate -AcceptAll -AutoReboot"


