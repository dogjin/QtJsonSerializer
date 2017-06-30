#!/bin/bash

mkdir inst
inst=$(pwd)/inst

cd build
make INSTALL_ROOT=$inst install

cd ../inst/opt/
mv qt59 gcc_64
XZ_OPT=-9 tar cJf gcc_64.tar.xz gcc_64
