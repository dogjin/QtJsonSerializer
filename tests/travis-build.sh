#!/bin/bash
set -e

echo QMAKE_CXX = g++-7 >> .qmake.conf

source /opt/qt*/bin/qt*-env.sh
/opt/qt*/bin/qmake
make qmake_all
make -j$(nproc) all


