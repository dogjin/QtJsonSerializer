setlocal
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" amd64_arm

mkdir build-winrt_armv7-msvc2017
cd build-winrt_armv7-msvc2017

C:\Qt\5.9\winrt_armv7_msvc2017\bin\qmake -r ..\qtjsonserializer.pro
nmake
nmake INSTALL_ROOT="\tmp\install" install
