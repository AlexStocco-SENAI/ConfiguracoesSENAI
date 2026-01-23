@echo off

powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Install-ProvisioningPackage -Path 'C:\Windows\System32\Sysprep\SENAI-LAB.ppkg' -QuietInstall -Force"