REM V3.1
REM ALTERANDO CONHEXÕES
SET vCaminho=%1
SET vModoConexao=%2

ECHO "ALTERANDO CONFIGURACAO DE IP DA CONEXAO %vMaquinaConexao%"

CD "%vCaminho%"
CALL "00VARIAVEIS\varGeral.bat"
CALL "00VARIAVEIS\varAmbiente.bat"
CALL "00VARIAVEIS\varMaquina.bat"
CALL "00VARIAVEIS\varRede.bat"

powershell -Command "Start-Process netsh -ArgumentList 'INT IP RESET all" dhcp' -Verb RunAs "
powershell -Command "Start-Process netsh -ArgumentList 'winsock reset all" dhcp' -Verb RunAs "


IF "%vModoConexao%"=="1" (
    powershell -Command "Start-Process netsh -ArgumentList 'interface ipv4 set address \"%vMaquinaConexao%\" dhcp' -Verb RunAs "
    powershell -Command "Start-Process netsh -ArgumentList 'interface ipv4 set dns \"%vMaquinaConexao%\" dhcp' -Verb RunAs "
    )

IF "%vModoConexao%"=="2" (

    powershell -Command "Start-Process netsh -ArgumentList 'interface ip set address \"%vMaquinaConexao%\" static %vMaquinaIP% %vMaquinaMascara% %vMaquinaGateway%' -Verb RunAs "

    IF NOT "%vMaquinaDNS1%"=="" (
        powershell -Command "Start-Process netsh -ArgumentList 'interface ipv4 set dns \"%vMaquinaConexao%\" static %vMaquinaDNS1% primary no' -Verb RunAs "
    )

    IF NOT "%vMaquinaDNS2%"=="" (
        powershell -Command "Start-Process netsh -ArgumentList 'interface ipv4 add dns \"%vMaquinaConexao%\" %vMaquinaDNS2% index=2 no' -Verb RunAs "
    )

    IF NOT "%vMaquinaDNS3%"=="" (
        powershell -Command "Start-Process netsh -ArgumentList 'interface ipv4 add dns \"%vMaquinaConexao%\" %vMaquinaDNS3% index=3 no' -Verb RunAs "
    )

    IF NOT "%vMaquinaDNS4%"=="" (
        powershell -Command "Start-Process netsh -ArgumentList 'interface ipv4 add dns \"%vMaquinaConexao%\" %vMaquinaDNS4% index=4 no' -Verb RunAs "
    )
    )

ipconfig /release 
Ipconfig /flushdns
ipconfig /renew
