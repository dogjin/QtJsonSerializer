@echo on

dir C:\Qt
dir C:\Qt\Tools

C:\Qt\MaintenanceTool.exe --platform minimal --script ./qt-installer-modify-script.qs
C:\Qt\MaintenanceTool.exe --platform minimal --silentUpdate

dir C:\Qt

exit 1
