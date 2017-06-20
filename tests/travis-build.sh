#!/bin/bash

source /opt/qt*/bin/qt*-env.sh
/opt/qt*/bin/qmake
make qmake_all
make -j$(nproc) all

cd tests/auto
for test in $(find . -name "tst_*"); do
	$test
done
