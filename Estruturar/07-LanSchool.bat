REM V3.01
echo off

if "%vModoLanSchool%"=="1" (
	"C:\Program Files (x86)\LanSchool\Utilities\SetChannel.exe" %vAmbienteLanSchool%
	SC CONFIG "LanSchoolStudent" start=AUTO
	SC CONFIG "LanSchoolHelper" start=AUTO
	NET START "LanSchoolStudent"
	NET START "LanSchoolHelper"
	CALL "C:\Program Files (x86)\LanSchool\teacher.exe"
)

if "%vModoLanSchool%"=="2" (
	"C:\Program Files (x86)\LanSchool\Utilities\SetChannel.exe" %vAmbienteLanSchool%
	taskkill /f /im student.exe
	taskkill /f /im teacher.exe
	taskkill /f /im lskHlpr64.exe
	taskkill /f /im LskHelper.exe
	SC CONFIG "LanSchoolStudent" start=DISABLED
	SC CONFIG "LanSchoolHelper" start=DISABLED
	NET STOP "LanSchoolStudent"
	NET STOP "LanSchoolHelper"
)
