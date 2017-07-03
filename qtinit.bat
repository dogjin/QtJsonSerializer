@echo on

dir C:\Qt
dir C:\Qt\Tools

:: C:\Qt\MaintenanceTool.exe --silentUpdate || exit \B 1
start C:\Qt\MaintenanceTool.exe --script ./qt-installer-modify-script.qs
for /l %%x in (1, 1, 15) do (
	timeout /t 60 > nul
	tasklist /FI "IMAGENAME eq MaintenanceTool.exe" 2>NUL | find /I /N "MaintenanceTool.exe">NUL
	if "%ERRORLEVEL%"=="0" (
		echo Program is running
	) else (
		dir C:\Qt
		dir C:\Qt\5.9.1
		exit 1
	)
)

dir C:\Qt
dir C:\Qt\5.9.1

echo TIMEOUT

exit 1
