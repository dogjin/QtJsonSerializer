for /l %%x in (1, 1, 13) do (
	timeout /t 60
	tasklist
)

taskkill /im MaintenanceTool.exe /f
