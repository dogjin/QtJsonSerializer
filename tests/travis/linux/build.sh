#!/bin/bash
set -e

export MAKEFLAGS="-j$(nproc)"
export ANDROID_HOME=$HOME/android/sdk
export ANDROID_NDK=$HOME/android/sdk/ndk-bundle
export ANDROID_SDK_ROOT=$ANDROID_HOME
export ANDROID_NDK_ROOT=$ANDROID_NDK

./tests/travis/linux/build-gcc.sh
./tests/travis/linux/build-android-armv7.sh
./tests/travis/linux/build-android-x86.sh

file /home/travis/build/Skycoder42/QJsonSerializer/build-gcc/doc/qtjsonserializer.qch
file /home/travis/build/Skycoder42/QJsonSerializer/install/opt/qt/Docs/Qt-5.9.1/qtjsonserializer.qch
