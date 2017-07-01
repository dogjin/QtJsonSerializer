mkdir build-msvc2017
cd build-msvc2017

C:\Qt\5.9\msvc2017_64\bin\qmake -r ..\qtjsonserializer.pro
nmake all

cd tests\auto
set QT_QPA_PLATFORM=minimal
C:\projects\qjsonserializer\build-msvc2017\tests\auto\jsonserializer\GadgetSerializerTest\debug\tst_gadgetserializer.exe
C:\projects\qjsonserializer\build-msvc2017\tests\auto\jsonserializer\ObjectSerializerTest\debug\tst_objectserializer.exe

cd ..\..
nmake INSTALL_ROOT="\tmp\install" install
