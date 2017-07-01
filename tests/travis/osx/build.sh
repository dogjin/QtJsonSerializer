#!/bin/bash
set -e

export MAKEFLAGS="-j$(nproc)"

./tests/travis/osx/build-clang.sh
./tests/travis/osx/build-ios.sh
