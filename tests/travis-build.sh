#!/bin/bash

source /opt/qt*/bin/qt*-env.sh
/opt/qt*/bin/qmake
make qmake_all
make -j$(nproc) all
