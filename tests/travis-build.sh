#!/bin/bash
source /opt/qt*/bin/qt*-env.sh
set -e

echo QMAKE_CXX = g++-7 >> .qmake.conf

/opt/qt*/bin/qmake
make qmake_all
make -j$(nproc) all

export LD_LIBRARY_PATH="$(pwd)/lib:$LD_LIBRARY_PATH"

cd tests/auto
for test in $(find . -type f -executable -name "tst_*"); do
	QT_QPA_PLATFORM=minimal $test
done
