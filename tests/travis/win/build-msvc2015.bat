setlocal
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64

mkdir build-msvc2015
cd build-msvc2015

C:\Qt\5.9\msvc2015_64\bin\qmake -r ..\qtjsonserializer.pro
nmake all

set PATH=%PATH%;%CD%\lib;
cd tests\auto
set QT_QPA_PLATFORM=minimal
for /r %%f in (tst_*.exe) do (
	echo running test %%f
	%%f
	echo %errorLevel%
	%%f || exit /B 1
)

cd ..\..
nmake INSTALL_ROOT="\tmp\install" install
