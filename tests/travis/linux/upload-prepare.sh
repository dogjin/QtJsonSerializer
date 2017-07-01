#!/bin/bash
set -e

export XZ_OPT=-9

cd install/opt/qt
tar cJf build_all_5.9.1.tar.xz 5.9.1
