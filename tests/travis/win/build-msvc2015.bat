setlocal
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" amd64
set PATH=C:\Qt\5.9\msvc2015_64\bin;%CD%\lib;%PATH%;

mkdir build-msvc2015
cd build-msvc2015

qmake -r ..\qtjsonserializer.pro
nmake all

cd tests\auto
set QT_QPA_PLATFORM=minimal
for /r %%f in (tst_*.exe) do (
	%%f || exit /B 1
)

cd ..\..
nmake INSTALL_ROOT="\tmp\install" install
