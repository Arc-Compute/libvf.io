cmd.exe /c powershell -Command "Set-ExecutionPolicy -ExecutionPolicy Unrestricted"
SCHTASKS /CREATE /SC LOGON /TN "install" /TR "cmd.exe /c powershell -File D:\install.ps1" /RL HIGHEST