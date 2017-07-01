:: builds

call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" x86_amd64

set QTDIR=C:\Qt\5.9\msvc2017_64
set PATH=%PATH%;%QTDIR%\bin;C:\MinGW\bin;

.\tests\travis\win\build-msvc2015.bat
.\tests\travis\win\build-msvc2017.bat
