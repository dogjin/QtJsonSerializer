mkdir build-msvc2017
cd build-msvc2017

C:\Qt\5.9\msvc2017_64\bin\qmake -r ..\qtjsonserializer.pro
nmake all

cd tests\auto
set QT_QPA_PLATFORM=minimal
for /f %%f in ('dir *\debug\tst_*.exe /b/s') do	echo %%f

cd ..\..
nmake INSTALL_ROOT="\tmp\install" install
