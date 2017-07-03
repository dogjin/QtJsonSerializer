@echo on

dir C:\Qt
dir C:\Qt\Tools

:: C:\Qt\MaintenanceTool.exe --silentUpdate || exit \B 1
start C:\Qt\MaintenanceTool.exe --script ./qt-installer-modify-script.qs
timeout /t 900

dir C:\Qt
dir C:\Qt\5.9.1

tasklist
taskkill /im C:\Qt\MaintenanceTool.exe /f

exit 1
