@echo off
REM V3.06

IF NOT "%vStart%"=="1" GOTO :EOF

ECHO ABRINDO PROGRAMAS

echo bJR4vC | clip

REM ===============================
REM LISTA DE PROGRAMAS
REM ===============================

for %%P in (
    "C:\Program Files\Google\Chrome\Application\chrome.exe"
    "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
    "C:\Arquivos de Programas\Autodesk\AutoCAD 2024\acad.exe"
    "C:\Arquivos de Programas\Autodesk\AutoCAD 2025\acad.exe"
    "C:\Arquivos de Programas\Autodesk\AutoCAD 2026\acad.exe"
    "C:\Arquivos de Programas\Autodesk\Inventor 2026\Bin\Inventor.exe"
    "C:\Arquivos de Programas\Autodesk\Inventor 2024\Bin\Inventor.exe"
    "C:\Arquivos de Programas\Autodesk\Inventor 2022\Bin\Inventor.exe"
    "C:\Arquivos de Programas\Autodesk\Revit 2026\Revit.exe"
    "C:\Arquivos de Programas\Autodesk\Revit 2025\Revit.exe"
    "C:\Arquivos de Programas\Autodesk\Revit 2024\Revit.exe"
    "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe"
    "C:\Program Files\Microsoft Visual Studio\18\Community\Common7\IDE\devenv.exe"
    "C:\Nanjing Swansoft\SSCNC\CNCLogin.exe"
    "C:\Program Files\Hexagon\EDGECAM 2022.1\cam\Launcher.exe"
    "C:\Program Files\Hypertherm CAM\ProNest 2023\ProNest.exe"
    "C:\Program Files\Siemens\Automation\Automation License Manager\almapp\almapp64x.exe"
    "C:\Program Files (x86)\Didactic\FluidSIM6\bin\FluidSIM6.exe"
) do (
    if exist "%%~P" (
        echo Abrindo %%~P
        start "" "%%~P"
    )
)

REM ===============================
REM PROGRAMAS ESPECIAIS
REM ===============================

REM WORD
start Winword.exe
echo laboratorio_cfp603@senaisp.edu.br | clip

REM INDUSOFT
set "indusoft=C:\Program Files (x86)\Indusoft Web Studio Educational v8.1\Bin\RunUniReg.exe"
if exist "%indusoft%" (
    start "" "%indusoft%"
    start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://om.aveva.com/InduSoftActivation/
)



