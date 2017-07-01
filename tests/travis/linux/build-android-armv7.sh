#!/bin/bash
set -e

echo ANDROID_NDK_ROOT $ANDROID_NDK_ROOT
echo ANDROID_SDK_ROOT $ANDROID_SDK_ROOT

$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-g++ -v

mkdir build-android-armv7
cd build-android-armv7

/opt/qt/5.9.1/android_armv7/bin/qmake -r ../qtjsonserializer.pro
make
make doxygen
make INSTALL_ROOT="$(pwd)/../install" install
