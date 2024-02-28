REM V3.04
REM INICIA PROGRAMAS QUE NECESSITAM DE ATIVAÇÃO DAS LICENÇAS

IF "%vStart%"=="1" (
    ECHO ABRINDO PROGRAMAS

    REM AUTOCAD 2024
    start " " "C:\Arquivos de Programas\Autodesk\AutoCAD 2024\acad.exe"  /product ACAD /language "en-US" > nul 2>&1

    REM INVENTOR 2024
    start " " "C:\Arquivos de Programas\Autodesk\Inventor 2024\Bin\Inventor.exe" /language=ENU > nul 2>&1

    REM REVIT 2024
    start " " "C:\Arquivos de Programas\Autodesk\Revit 2024\Revit.exe" /language ENU > nul 2>&1

    REM FUSION
    start " " "C:\Program Files\Autodesk\webdeploy\production\6a0c9611291d45bb9226980209917c3d\FusionLauncher.exe" > nul 2>&1

    REM WORD
    start Winword.exe
    echo NFY9XKV6D4RJJ83T9QT8D9P | clip

    REM INDUSOFT
    start " " "C:\Program Files (x86)\Indusoft Web Studio Educational v8.1\Bin\RunUniReg.exe"  > nul 2>&1
    start " " "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://www.indusoft.com/license-activation-commercial  > nul 2>&1

    REM VISUAL STUDIO
    REM start " " "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe"  > nul 2>&1

    REM SSCNC
    start " " "C:\Nanjing Swansoft\SSCNC\CNCLogin.exe"  > nul 2>&1

    REM EDGECAM
    start " " "C:\Program Files\Hexagon\EDGECAM 2022.1\cam\Launcher.exe"  > nul 2>&1

    REM PRONEST
    start " " "C:\Program Files\Hypertherm CAM\ProNest 2023\ProNest.exe"  > nul 2>&1

    REM TIA Portal
    start " " "C:\Program Files\Siemens\Automation\Automation License Manager\almapp\almapp64x.exe"

)
