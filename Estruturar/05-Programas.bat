REM V3.04
REM INICIA PROGRAMAS QUE NECESSITAM DE ATIVAÇÃO DAS LICENÇAS

IF "%vStart%"=="1" (
    ECHO ABRINDO PROGRAMAS

    REM AUTOCAD 2024
    set "program=C:\Arquivos de Programas\Autodesk\AutoCAD 2024\acad.exe" 
    if exist "%program%" (
        start "" "%program%" > nul 2>&1
    )

    REM INVENTOR 2024
    set "program=C:\Arquivos de Programas\Autodesk\Inventor 2024\Bin\Inventor.exe"
    if exist "%program%" (
        start "" "%program%"  /language=ENU > nul 2>&1
    )

    REM REVIT 2024
    set "program=C:\Arquivos de Programas\Autodesk\Revit 2024\Revit.exe" /language ENU
    if exist "%program%" (
        start "" "%program%"  /language ENU > nul 2>&1
    )

    REM FUSION
    set "program=C:\Program Files\Autodesk\webdeploy\production\6a0c9611291d45bb9226980209917c3d\FusionLauncher.exe"
    if exist "%program%" (
        start "" "%program%" > nul 2>&1
    )

    REM WORD
    start Winword.exe
    echo NFY9XKV6D4RJJ83T9QT8D9P | clip

    REM INDUSOFT
    set "program=C:\Program Files (x86)\Indusoft Web Studio Educational v8.1\Bin\RunUniReg.exe"
    if exist "%program%" (
        start "" "%program%" > nul 2>&1
        start " " "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://www.indusoft.com/license-activation-commercial  > nul 2>&1
    )
    

    REM VISUAL STUDIO
    set "program=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe"
    if exist "%program%" (
        start "" "%program%" > nul 2>&1
    )

    REM SSCNC
    set "program=C:\Nanjing Swansoft\SSCNC\CNCLogin.exe"
    if exist "%program%" (
        start "" "%program%" > nul 2>&1
    )

    REM EDGECAM
    set "program=C:\Program Files\Hexagon\EDGECAM 2022.1\cam\Launcher.exe"
    if exist "%program%" (
        start "" "%program%" > nul 2>&1
    )

    REM PRONEST
    set "program=C:\Program Files\Hypertherm CAM\ProNest 2023\ProNest.exe" 
    if exist "%program%" (
        start "" "%program%" > nul 2>&1
    )

    REM TIA Portal
    set "program=C:\Program Files\Siemens\Automation\Automation License Manager\almapp\almapp64x.exe"
    if exist "%program%" (
        start "" "%program%" > nul 2>&1
    )

)
