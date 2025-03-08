REM V3.04
REM INICIA PROGRAMAS QUE NECESSITAM DE ATIVAÇÃO DAS LICENÇAS


ECHO ABRINDO PROGRAMAS

REM AUTOCAD 2024
    set "program1=C:\Arquivos de Programas\Autodesk\AutoCAD 2024\acad.exe" 
    IF "%vStart%"=="1" (
        if exist "%program1%" (
            start "" "%program1%"
        )
    )
    set "program1=C:\Arquivos de Programas\Autodesk\AutoCAD 2025\acad.exe" 
    IF "%vStart%"=="1" (
        if exist "%program1%" (
            start "" "%program1%"
        )
    )

REM INVENTOR 2024
    set "program2=C:\Arquivos de Programas\Autodesk\Inventor 2024\Bin\Inventor.exe"
    IF "%vStart%"=="1" (
        if exist "%program2%" (
            start "" "%program2%"  /language=ENU
        )
    )
    set "program2=C:\Arquivos de Programas\Autodesk\Inventor 2022\Bin\Inventor.exe"
    IF "%vStart%"=="1" (
        if exist "%program2%" (
            start "" "%program2%"  /language=ENU
        )
    )

REM REVIT 2024
    set "program=C:\Arquivos de Programas\Autodesk\Revit 2024\Revit.exe"
    IF "%vStart%"=="1" (
        if exist "%program%" (
            start "" "%program%"  /language ENU
        )
    )

    set "program=C:\Arquivos de Programas\Autodesk\Revit 2025\Revit.exe"
    IF "%vStart%"=="1" (
        if exist "%program%" (
            start "" "%program%"  /language ENU
        )
    )

REM FUSION
    set "program=C:\Program Files\Autodesk\webdeploy\production\6a0c9611291d45bb9226980209917c3d\FusionLauncher.exe"
    IF "%vStart%"=="1" (
        if exist "%program%" (
            start "" "%program%"
        )
    )

REM WORD
    IF "%vStart%"=="1" (
        start Winword.exe
        echo NFY9XKV6D4RJJ83T9QT8D9P | clip
    )

REM INDUSOFT
    set "program3=C:\Program Files (x86)\Indusoft Web Studio Educational v8.1\Bin\RunUniReg.exe"
    IF "%vStart%"=="1" (
        if exist "%program3%" (
            start "" "%program3%"
            start " " "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" https://www.indusoft.com/license-activation-commercial
        )
    )
    

REM VISUAL STUDIO
    set "program=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe"
    IF "%vStart%"=="1" (
        if exist "%program%" (
            start "" "%program%"
        )
    )

REM SSCNC
    set "program=C:\Nanjing Swansoft\SSCNC\CNCLogin.exe"
    IF "%vStart%"=="1" (
        if exist "%program%" (
            start "" "%program%"
        )
    )

REM EDGECAM
    set "program=C:\Program Files\Hexagon\EDGECAM 2022.1\cam\Launcher.exe"
    IF "%vStart%"=="1" (
        if exist "%program%" (
            start "" "%program%"
        )
    )

REM PRONEST
    set "program=C:\Program Files\Hypertherm CAM\ProNest 2023\ProNest.exe" 
    IF "%vStart%"=="1" (
        if exist "%program%" (
            start "" "%program%"
        )
    )

REM TIA Portal
    set "program=C:\Program Files\Siemens\Automation\Automation License Manager\almapp\almapp64x.exe"
    IF "%vStart%"=="1" (
        if exist "%program%" (
            start "" "%program%"
        )
    )

REM FluidSim
    set "program=C:\Program Files (x86)\Didactic\FluidSIM6\bin\FluidSIM6.exe"
    IF "%vStart%"=="1" (
        if exist "%program%" (
            start "" "%program%"
        )
    )
