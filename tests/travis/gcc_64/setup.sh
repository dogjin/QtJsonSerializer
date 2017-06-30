#!/bin/bash
set -ex

apt-get update
apt-get -qq install --no-install-recommends libgl1-mesa-dev libglib2.0-0 libpulse-dev g++ make git ca-certificates curl xauth libx11-xcb1 libfontconfig1 libdbus-1-3 python3 patchelf doxygen

curl -Lo /tmp/qpm https://www.qpm.io/download/v0.10.0/linux_386/qpm
install -m 755 /tmp/qpm /usr/local/bin/

curl -Lo /tmp/installer.run https://download.qt.io/official_releases/online_installers/qt-unified-linux-x64-online.run
chmod +x /tmp/installer.run
QT_QPA_PLATFORM=minimal /tmp/installer.run --script tests/travis/gcc_64/qt-installer-script.qs --addRepository https://install.skycoder42.de/qtmodules/linux_x64
