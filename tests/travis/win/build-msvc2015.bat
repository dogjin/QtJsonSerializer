mkdir build-msvc2015
cd build-msvc2015

C:\Qt\5.9\msvc2015_64\bin\qmake -r ..\qtjsonserializer.pro
nmake all

set PATH=%PATH%;%CD%\lib;
cd tests\auto
set QT_QPA_PLATFORM=minimal
for /r %%f in (tst_*.exe) do (
	%%f
)

cd ..\..
nmake INSTALL_ROOT="\tmp\install" install
