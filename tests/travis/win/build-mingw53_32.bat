setlocal
set PATH=%PATH%;C:\Qt\Tools\mingw530_32\bin;C:\MinGW\bin;
set MAKEFLAGS=-j%NUMBER_OF_PROCESSORS%

dir C:\Qt\Tools
dir C:\MinGW\bin

mkdir build-mingw53_32
cd build-mingw53_32

C:\Qt\5.9\mingw53_32\bin\qmake -r ..\qtjsonserializer.pro
mingw32-make
mingw32-make INSTALL_ROOT=\projects\qjsonserializer\install install
