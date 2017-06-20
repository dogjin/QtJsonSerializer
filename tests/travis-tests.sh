#!/bin/bash

source /opt/qt*/bin/qt*-env.sh
export LD_LIBRARY_PATH="$(pwd)/lib:$LD_LIBRARY_PATH"

cd tests/auto
for test in $(find . -type f -executable -name "tst_*"); do
	$test
done
