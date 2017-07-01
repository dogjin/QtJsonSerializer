setlocal
set PATH=%PATH%;C:\MinGW\bin;

mkdir build-mingw53_32
cd build-mingw53_32

C:\Qt\5.9\mingw53_32\bin\qmake -r ..\qtjsonserializer.pro
nmake
nmake INSTALL_ROOT="\tmp\install" install
