@echo on

dir C:\Qt
dir C:\Qt\Tools

:: C:\Qt\MaintenanceTool.exe --silentUpdate || exit \B 1
C:\Qt\MaintenanceTool.exe --platform minimal --script ./qt-installer-modify-script.qs --verbose || exit \B 1

dir C:\Qt

exit 1
