#!/bin/bash
set -e

echo QMAKE_CXX = g++-7 >> .qmake.conf

mkdir build-gcc
cd build-gcc

/opt/qt/5.9.1/gcc_64/bin/qmake -r ../qtjsonserializer.pro
make -j$(nproc) all
make doxygen

export LD_LIBRARY_PATH="$(pwd)/lib:$LD_LIBRARY_PATH"

cd tests/auto
for test in $(find . -type f -executable -name "tst_*"); do
	QT_QPA_PLATFORM=minimal $test
done
