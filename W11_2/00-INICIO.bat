REM V3.1
@ECHO OFF
chcp 65001
runas.exe /profile /savedcred /USER:Master CALL

REM PASTA ONDE ESTÁ LOCALIZADO OS SCRIPTS
SET vCaminho="C:\Padronizacao\Scripts\Estruturar"
CD "%vCaminho%"
setlocal enabledelayedexpansion
set "github_file_url=https://alexstocco-senai.github.io/ConfiguracoesSENAI/Estruturar/AT.bat"
@curl -LJO "%github_file_url%" > nul 2>&1
set "github_file_url=https://alexstocco-senai.github.io/ConfiguracoesSENAI/Estruturar/ATADMIN.bat"
@curl -LJO "%github_file_url%" > nul 2>&1
set "github_file_url=https://alexstocco-senai.github.io/ConfiguracoesSENAI/Estruturar/ATPO.bat"
@curl -LJO "%github_file_url%" > nul 2>&1
set "github_file_url=https://alexstocco-senai.github.io/ConfiguracoesSENAI/Estruturar/00VARIAVEIS/ATVAR.bat"
@curl -LJO "%github_file_url%" > nul 2>&1
move ATVAR.bat "%vCaminho%\00VARIAVEIS\ATVAR.bat"
CALL "AT.bat"
runas.exe /profile /savedcred /USER:Master "\"%vCaminho%\ATADMIN.bat\" %vCaminho%"
CALL "00VARIAVEIS\ATVAR.bat"
CALL "00VARIAVEIS\varGeral.bat"
CALL "00VARIAVEIS\varAmbiente.bat"
CALL "00VARIAVEIS\varMaquina.bat"
CLS

ECHO "SCRIPT DE PADRONIZACAO DE COMPUTADOR
set vModoVariaveis=0
set /p vModoVariaveis=Deseja reconfigurar as informações da máquina?(0-NAO 1-SIM)
if %vModoVariaveis%==1 (
	CD 00VARIAVEIS
	CALL "setVariaveis.bat"
	CD ..
)

REM OPCOES PADROES
set vModoLanSchool=0
set vModoConexao=0
set vModoPlano=0
set vStart=0
set vModoParticao=0
set vModoParticaoLimpa=0
set vModoBloqueio=0
set vModoParticaoD=2
set vModoParticaoPadrao=2
set vModoIntune=0


Echo --- Intune ---
set /p vModoIntune=Iniciar processo para ativação do Intune? (0-NAO 1-SIM)
Echo --- LanSchool ---
REM set /p vModoLanSchool=Deseja habilitar o LanSchool? (0-PULA 1-HABILITA 2-DESABILITA)
Echo --- Rede ---
REM set /p vModoConexao=Escolha o modo de conexao (0-PULA 1-DHCP 2-STATIC):
REM set /p vModoDisco=Deseja alterar as letras dos discos? (0-NAO 1-SIM)
Echo --- Plano de fundo ---
set /p vModoPlano=Deseja alterar o plano de fundo? (0-NAO 1-SIM)
Echo --- Programas ---
set /p vStart=Deseja iniciar os programas padrões para verificacao de licenca? (0-NAO 1-SIM)
Echo --- Bloqueio ---
REM set /p vModoBloqueio=Deseja bloquear NETSH e WSCRIPT? (0-PULA 1-BLOQUEIA 2-DESBLOQUEIA)
Echo --- Particoes ---
set /p vModoParticao=Deseja configurar as particoes? (0-NAO 1-SIM)
   if %vModoParticao%==1 set /p vModoParticaoLimpa=Realiza a remocao de todas as letras? (0-NAO 1-SIM)
   if %vModoParticao%==1 set /p vModoParticaoD=Deseja habilitar a particao de Dados (D:)? (0-DESABILITA 1-HABILITA)
   set vModoParticaoPadrao=0
   if %vModoParticaoD%==1 set /p vModoParticaoPadrao=Qual sera a particao do usuario? (0-C: 1-D:)
       set vModoParticaoUpdate=0
   if %vModoParticaoPadrao%==1 set /p vModoParticaoUpdate=Deseja atualizar a pasta usuário de D:? (0-NAO 1-SIM)

IF %vModoVariaveis%==1 CALL "02-Identificacao"

IF NOT %vModoLanSchool%==0 CALL "07-LanSchool.bat"

IF NOT %vModoIntune%==0 runas.exe /profile /savedcred /USER:Master "\"%vCaminho%\09-Ativacao_Intune.bat\" "

CALL "05-Programas"

IF NOT %vModoConexao%==0 runas.exe /profile /savedcred /USER:Master "\"%vCaminho%\04-Conexao.bat\" %vCaminho% %vModoConexao%"

IF NOT %vModoPlano%==0 CALL "03-Plano_de_Fundo.bat"

REM IF NOT %vModoDisco%==0 diskpart /s "%vCaminho%\Diskpart.txt"


IF NOT %vModoBloqueio%==0 runas.exe /profile /savedcred /USER:Master "\"%vCaminho%\06-Bloqueios.bat\" %vModoBloqueio%"


IF NOT %vModoParticao%==0 CALL "08-Particao.bat"



timeout /t 30 >nul
CALL "ATPO.bat"

set /p vReiniciar=Deseja reiniciar? (0-NAO)
IF "%vReiniciar%"=="1" (SHUTDOWN -R -T 0)
IF "%vReiniciar%"=="" (SHUTDOWN -R -T 0)




