REM V3.01
REM ALTERANDO PARTIÇÕES
REM SET vCaminho=%1
REM SET vModoParticao=%2
REM SET vModoParticaoD=%3
REM SET vModoParticaoPadrao=%4
REM SET vModoParticaoUpdtate=%5

REM CD "%vCaminho%"
REM CD 00VARIAVEIS
REM CALL "varGeral.bat"
REM CALL "varAmbiente.bat"
REM CALL "varMaquina.bat"
IF %vModoParticaoLimpa%==0 (
	diskpart /s "00VARIAVEIS\Volume_Remove_All.txt"
	diskpart /s "00VARIAVEIS\Volume_Set_E.txt"
)

IF %vModoParticaoD%==0 (
	DEL 00VARIAVEIS\Volume_Set.txt
	ECHO SELECT VOLUME %vMaquinaParticaoD% >> 00VARIAVEIS\Volume_Set.txt
	ECHO remove noerr >> 00VARIAVEIS\Volume_Set.txt
	diskpart /s "00VARIAVEIS\Volume_Set.txt"
)

IF %vModoParticaoD%==1 (
	DEL 00VARIAVEIS\Volume_Set.txt
	IF NOT %vMaquinaParticaoD%==- ECHO SELECT VOLUME %vMaquinaParticaoD% >> 00VARIAVEIS\Volume_Set.txt
	IF NOT %vMaquinaParticaoD%==- ECHO assign letter=D noerr >> 00VARIAVEIS\Volume_Set.txt
	diskpart /s "00VARIAVEIS\Volume_Remove_All.txt"	
	diskpart /s "00VARIAVEIS\Volume_Set.txt"
	diskpart /s "00VARIAVEIS\Volume_Set_E.txt"
)

IF %vModoParticaoPadrao%==0 (
	regedit /s 00VARIAVEIS\PROFILELIST_SENAI_PARTICAO_C.reg
)

IF %vModoParticaoPadrao%==1 (
	regedit /s 00VARIAVEIS\PROFILELIST_SENAI_PARTICAO_D.reg
)

IF %vModoParticaoUpdate%==1 (
	DEL "D:\Users\SENAI\" /F /Q /S
	RD "D:\Users\SENAI\" /S /Q
	xcopy "C:\Users\SENAI\*" "D:\Users\SENAI\" /C /F /H /R /Y /E
)

