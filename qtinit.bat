@echo on

:: C:\Qt\MaintenanceTool.exe --silentUpdate || exit \B 1
C:\Qt\MaintenanceTool.exe --script ./qt-installer-modify-script.qs --addRepository https://install.skycoder42.de/qtmodules/windows_x86
