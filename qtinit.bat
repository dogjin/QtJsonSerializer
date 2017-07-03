@echo on

dir C:\Qt
dir C:\Qt\Tools

:: C:\Qt\MaintenanceTool.exe --silentUpdate || exit \B 1
start C:\Qt\MaintenanceTool.exe --script ./qt-installer-modify-script.qs
for /l %x in (1, 1, 15) do (
	timeout /t 60
	dir C:\Qt
	dir C:\Qt\5.9.1
)
taskkill /im C:\Qt\MaintenanceTool.exe /f

dir C:\Qt
dir C:\Qt\5.9.1

exit 1
