@ECHO OFF
CALL "varGeral.bat"

ECHO --- SETANDO VARIAVEIS DE AMBIENTE ---
CALL "varAmbiente.bat"
SET /p "vAmbienteLocal=Qual o local da sala (ATUAL:%vAmbienteLocal%):"
SET /p "vAmbienteSigla=Qual a sigla da sala (ATUAL:%vAmbienteSigla%):"
SET /p "vAmbienteLanSchool=Qual o código do lanschool (ATUAL:%vAmbienteLanSchool%):"

DEL varAmbiente.bat

ECHO SET "vAmbienteLocal=%vAmbienteLocal%">>varAmbiente.bat
ECHO SET "vAmbienteSigla=%vAmbienteSigla%">>varAmbiente.bat
ECHO SET "vAmbienteLanSchool=%vAmbienteLanSchool%">>varAmbiente.bat

ECHO --- SETANDO VARIAVEIS DE MAQUINA ---
CALL "varMaquina.bat"
set /p "vMaquinaPatrimonio=Insira o patrimonio: (ATUAL:%vMaquinaPatrimonio%):"
set /p "vMaquinaIdentificacao=Insira o numero do computador (ATUAL:%vMaquinaIdentificacao%):"
if %vMaquinaIdentificacao%==0 SET vMaquinaIdentificacao=00
if %vMaquinaIdentificacao%==1 SET vMaquinaIdentificacao=01
if %vMaquinaIdentificacao%==2 SET vMaquinaIdentificacao=02
if %vMaquinaIdentificacao%==3 SET vMaquinaIdentificacao=03
if %vMaquinaIdentificacao%==4 SET vMaquinaIdentificacao=04
if %vMaquinaIdentificacao%==5 SET vMaquinaIdentificacao=05
if %vMaquinaIdentificacao%==6 SET vMaquinaIdentificacao=06
if %vMaquinaIdentificacao%==7 SET vMaquinaIdentificacao=07
if %vMaquinaIdentificacao%==8 SET vMaquinaIdentificacao=08
if %vMaquinaIdentificacao%==9 SET vMaquinaIdentificacao=09
SET "vMaquinaNome=%vGeralNomePrefixo%%vMaquinaPatrimonio%"
SET "vMaquinaDescricao=%vAmbienteSigla%_%vMaquinaPatrimonio%_%vMaquinaIdentificacao%"
SET "vMaquinaUsuario=Aluno %vMaquinaIdentificacao%"
if %vMaquinaIdentificacao%==00 SET vMaquinaUsuario=Docente

ECHO --- SETANDO VARIAVEIS DE VOLUME ---
set vLetraParticao=0
set /p vLetraParticao=Deseja alterar as letras das particoes? (0-NAO 1-SIM)
IF %vLetraParticao%==1 (
    diskpart /s list_volume.txt
    set /p vMaquinaParticaoC=Insira o numero do volume WINDOWS - ATUAL:%vMaquinaParticaoC% -
    set /p vMaquinaParticaoD=Insira o numero do volume DADOS - ATUAL:%vMaquinaParticaoD% -
    set /p vMaquinaParticaoE=Insira o numero do volume CDROM - ATUAL:%vMaquinaParticaoE% -
    set /p vMaquinaParticaoR=Insira o numero do volume RESTORE - ATUAL:%vMaquinaParticaoR% -
	
	DEL Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==0 ECHO SELECT VOLUME 0 >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==0 ECHO remove noerr >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==1 ECHO SELECT VOLUME 1 >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==1 ECHO remove noerr >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==2 ECHO SELECT VOLUME 2 >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==2 ECHO remove noerr >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==3 ECHO SELECT VOLUME 3 >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==3 ECHO remove noerr >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==4 ECHO SELECT VOLUME 4 >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==4 ECHO remove noerr >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==5 ECHO SELECT VOLUME 5 >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==5 ECHO remove noerr >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==6 ECHO SELECT VOLUME 6 >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==6 ECHO remove noerr >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==7 ECHO SELECT VOLUME 7 >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==7 ECHO remove noerr >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==8 ECHO SELECT VOLUME 8 >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==8 ECHO remove noerr >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==9 ECHO SELECT VOLUME 9 >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoC%==9 ECHO remove noerr >> Volume_Remove_All.txt
	IF NOT %vMaquinaParticaoE%==- ECHO SELECT VOLUME %vMaquinaParticaoE% >> Volume_Set_E.txt
	IF NOT %vMaquinaParticaoE%==- ECHO assign letter=E noerr >> Volume_Set_E.txt
)

ECHO --- SETANDO VARIAVEIS DE CONEXAO ---
ipconfig /all
set /p "vMaquinaConexao=Insira a conexao: (ATUAL:%vMaquinaConexao%):"
CALL "varRede.bat"


DEL varMaquina.bat
ECHO SET "vMaquinaPatrimonio=%vMaquinaPatrimonio%">>varMaquina.bat
ECHO SET "vMaquinaIdentificacao=%vMaquinaIdentificacao%">>varMaquina.bat
ECHO SET "vMaquinaNome=%vMaquinaNome%">>varMaquina.bat
ECHO SET "vMaquinaDescricao=%vMaquinaDescricao%">>varMaquina.bat
ECHO SET "vMaquinaUsuario=%vMaquinaUsuario%">>varMaquina.bat

ECHO SET "vMaquinaConexao=%vMaquinaConexao%">>varMaquina.bat
ECHO SET "vMaquinaVLAN=%vMaquinaVLAN%">>varMaquina.bat
ECHO SET "vMaquinaIP=%vMaquinaIP%">>varMaquina.bat
ECHO SET "vMaquinaMascara=%vMaquinaMascara%">>varMaquina.bat
ECHO SET "vMaquinaGateway=%vMaquinaGateway%">>varMaquina.bat
ECHO SET "vMaquinaDNS1=%vMaquinaDNS1%">>varMaquina.bat
ECHO SET "vMaquinaDNS2=%vMaquinaDNS2%">>varMaquina.bat
ECHO SET "vMaquinaParticaoC=%vMaquinaParticaoC%" >> varMaquina.bat
ECHO SET "vMaquinaParticaoD=%vMaquinaParticaoD%" >> varMaquina.bat
ECHO SET "vMaquinaParticaoE=%vMaquinaParticaoE%" >> varMaquina.bat
ECHO SET "vMaquinaParticaoR=%vMaquinaParticaoR%" >> varMaquina.bat
