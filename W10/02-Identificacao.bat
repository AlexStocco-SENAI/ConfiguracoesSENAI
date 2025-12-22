REM V3.1
@ECHO OFF
REM ALTERA O NOME DO COMPUTADOR

wmic computersystem where name="%computername%" rename "%vMaquinaNome%"

REM ALTERA A DESCRIÇÃO DO COMPUTADOR
reg add "HKLM\System\CurrentControlSet\Services\lanmanserver\parameters" /v srvcomment /t REG_SZ /d %vMaquinaDescricao% /f

REM ALTERA O NOME DO USUARIO
net user Senai /fullname:"%vMaquinaUsuario%"

REM ALTERA O NOME DO ATALHO DOCUMENTOS CONTIDO NO MENU INICIAR
del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Atalhos\*.*" /q
copy "C:\Padronizacao\Atalhos\Usuario.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Atalhos\Usuario.lnk" /y
rename "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Atalhos\Usuario.lnk" "%vMaquinaUsuario%.lnk"

REM ALTERA O CANAL DO LANSCHOOL
"C:\Program Files (x86)\LanSchool\Utilities\SetChannel.exe" %vAmbienteLanSchool%

REM ALTERA O LOGIN PADRÃO DO SSCNC
if exist "C:\Nanjing Swansoft\SSCNC\common\tmp" (
    copy "C:\Nanjing Swansoft\SSCNC\common\tmp\user_padrao.ini" "C:\Nanjing Swansoft\SSCNC\common\tmp\user.ini" /y
    echo SSLABUSERNAME0=%vMaquinaIdentificacao% >> "C:\Nanjing Swansoft\SSCNC\common\tmp\user.ini"
)
