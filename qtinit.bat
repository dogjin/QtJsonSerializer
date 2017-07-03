dir C:\Qt
dir C:\Qt\Tools

C:\Qt\MaintenanceTool.exe --silentUpdate
C:\Qt\MaintenanceTool.exe --platform minimal --script ./qt-installer-modify-script.qs

dir C:\Qt

exit 1
