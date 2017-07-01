#!/bin/bash
set -e

mkdir build-gcc
cd build-gcc

/opt/qt/5.9.1/gcc_64/bin/qmake -r "QMAKE_CXX=g++-7" ../qtjsonserializer.pro
make all
make doxygen
cat /home/travis/build/Skycoder42/QJsonSerializer/build-gcc/doc/qtjsonserializer.qch

export LD_LIBRARY_PATH="$(pwd)/lib:$LD_LIBRARY_PATH"

cd tests/auto
for test in $(find . -type f -executable -name "tst_*"); do
	QT_QPA_PLATFORM=minimal $test
done

cd ../..
make INSTALL_ROOT="$(pwd)/../install" install
