#!/bin/bash
set -e

mkdir build-android-armv7
cd build-android-armv7

/opt/qt/5.9.1/android_armv7/bin/qmake -r ../qtjsonserializer.pro
make
make doxygen
