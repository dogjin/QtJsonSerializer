@echo on

dir C:\Qt
dir C:\Qt\Tools

:: C:\Qt\MaintenanceTool.exe --silentUpdate || exit \B 1
start timelog.bat
C:\Qt\MaintenanceTool.exe --script ./qt-installer-modify-script.qs

dir C:\Qt
dir C:\Qt\5.9.1

exit 1
