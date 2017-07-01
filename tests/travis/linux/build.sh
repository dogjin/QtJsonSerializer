#!/bin/bash

export MAKEFLAGS="-j$(nproc)"
export ANDROID_HOME=$HOME/android/sdk
export ANDROID_NDK_HOME=$HOME/android/sdk/ndk-bundle

./tests/travis/linux/build-gcc.sh
./tests/travis/linux/build-android-armv7.sh
./tests/travis/linux/build-android-x86.sh
