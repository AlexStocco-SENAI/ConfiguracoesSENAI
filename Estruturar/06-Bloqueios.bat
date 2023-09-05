SET vModoBloqueio=%1

if %vModoBloqueio%==1 (
	powershell -Command "Start-Process icacls -ArgumentList '\"C:\Windows\System32\netsh.exe\" /deny senai:f' -Verb RunAs "
	powershell -Command "Start-Process icacls -ArgumentList '\"C:\Windows\SysWOW64\netsh.exe\" /deny senai:f' -Verb RunAs "
	powershell -Command "Start-Process cmd -ArgumentList '/C \"rename C:\Windows\System32\wscript.exe wscript2.exe\"' -Verb RunAs "
	powershell -Command "Start-Process cmd -ArgumentList '/C \"rename C:\Windows\SysWOW64\wscript.exe wscript2.exe\"' -Verb RunAs "
)

if %vModoBloqueio%==1.1 (
	powershell -Command "Start-Process icacls -ArgumentList '\"C:\Windows\System32\netsh.exe\" /deny senai:f' -Verb RunAs "
	powershell -Command "Start-Process icacls -ArgumentList '\"C:\Windows\SysWOW64\netsh.exe\" /deny senai:f' -Verb RunAs "
)

if %vModoBloqueio%==1.2 (
	powershell -Command "Start-Process cmd -ArgumentList '/C \"rename C:\Windows\System32\wscript.exe wscript2.exe\"' -Verb RunAs "
	powershell -Command "Start-Process cmd -ArgumentList '/C \"rename C:\Windows\SysWOW64\wscript.exe wscript2.exe\"' -Verb RunAs "
)

if %vModoBloqueio%==2 (
	powershell -Command "Start-Process icacls -ArgumentList '\"C:\Windows\System32\netsh.exe\" /grant senai:f' -Verb RunAs "
	powershell -Command "Start-Process icacls -ArgumentList '\"C:\Windows\SysWOW64\netsh.exe\" /grant senai:f' -Verb RunAs "
	powershell -Command "Start-Process cmd -ArgumentList '/C \"rename C:\Windows\System32\wscript2.exe wscript.exe\"' -Verb RunAs "
	powershell -Command "Start-Process cmd -ArgumentList '/C \"rename C:\Windows\SysWOW64\wscript2.exe wscript.exe\"' -Verb RunAs "
)

if %vModoBloqueio%==2.1 (
	powershell -Command "Start-Process icacls -ArgumentList '\"C:\Windows\System32\netsh.exe\" /grant senai:f' -Verb RunAs "
	powershell -Command "Start-Process icacls -ArgumentList '\"C:\Windows\SysWOW64\netsh.exe\" /grant senai:f' -Verb RunAs "
)

if %vModoBloqueio%==2.2 (
	powershell -Command "Start-Process cmd -ArgumentList '/C \"rename C:\Windows\System32\wscript2.exe wscript.exe\"' -Verb RunAs "
	powershell -Command "Start-Process cmd -ArgumentList '/C \"rename C:\Windows\SysWOW64\wscript2.exe wscript.exe\"' -Verb RunAs "
)