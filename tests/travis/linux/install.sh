#!/bin/bash
set -e

export XZ_OPT=-9

cd build-gcc
mkdir install
inst=$(pwd)/inst

make INSTALL_ROOT=$inst install

cd inst/opt/qt/5.9.1
tar cJf gcc_64.tar.xz gcc_64

cd gcc_64
find .
