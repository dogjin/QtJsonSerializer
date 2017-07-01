#!/bin/bash

export MAKEFLAGS="-j$(nproc)"

./tests/travis/linux/build-gcc.sh
./tests/travis/linux/build-android-armv7.sh
./tests/travis/linux/build-android-x86.sh
