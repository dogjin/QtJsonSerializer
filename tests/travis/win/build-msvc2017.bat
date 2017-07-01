mkdir build-msvc2017
cd build-msvc2017

C:\Qt\5.9\msvc2017_64\bin\qmake -r ..\qtjsonserializer.pro
nmake all

cd tests\auto
set QT_QPA_PLATFORM=minimal
for /r %%f in (tst_*.exe) do (
	@echo test found %%f
	echo.%%f | findstr /C:"debug" 1>nul
	if errorlevel 0 (
		@echo debug test found %%f
	)
)

cd ..\..
nmake INSTALL_ROOT="\tmp\install" install
