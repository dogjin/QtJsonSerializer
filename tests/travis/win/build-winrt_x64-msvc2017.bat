mkdir build-winrt_x64-msvc2017
cd build-winrt_x64-msvc2017

C:\Qt\5.9\winrt_x64_msvc2017\bin\qmake -r ..\qtjsonserializer.pro
nmake all

set PATH=%PATH%;%CD%\lib;
cd tests\auto
set QT_QPA_PLATFORM=minimal
for /r %%f in (tst_*.exe) do (
	%%f
)

cd ..\..
nmake INSTALL_ROOT="\tmp\install" install
