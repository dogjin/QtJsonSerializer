call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" x86_amd64

mkdir build-msvc2017
cd build-msvc2017

C:\Qt\5.9\msvc2017_64\bin\qmake -r ..\qtjsonserializer.pro
nmake all

PATH=%PATH%;%CD%\lib;
cd tests\auto
QT_QPA_PLATFORM=minimal
for /r %%f in (tst_*.exe) do (
	%%f || exit /B 1
)

cd ..\..
nmake INSTALL_ROOT="\tmp\install" install
