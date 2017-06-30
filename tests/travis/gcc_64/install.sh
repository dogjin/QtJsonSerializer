#!/bin/bash
set -e

export XZ_OPT=-9

cd build-gcc
mkdir install
inst=$(pwd)/inst

make INSTALL_ROOT=$inst install

cd inst/opt/
mv qt59 gcc_64
tar cJf gcc_64.tar.xz gcc_64

cd gcc_64
find .
