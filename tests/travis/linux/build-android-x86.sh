#!/bin/bash
set -e

mkdir build-android-x86
cd build-android-x86

/opt/qt/5.9.1/android_x86/bin/qmake -r ../qtjsonserializer.pro
make
make INSTALL_ROOT="$(pwd)/../install" install
