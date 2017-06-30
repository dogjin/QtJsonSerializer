#!/bin/bash
set -e

# android skd/ndk
curl -Lo /tmp/android-sdk.zip https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip
mkdir android
unzip -qq /tmp/android-sdk.zip -d android/sdk/
./android/sdk/tools/bin/sdkmanager --update
echo y | ./android/sdk/tools/bin/sdkmanager "platform-tools" "platforms;android-26" "build-tools;26.0.0" "extras;google;m2repository" "extras;android;support" "ndk-bundle" 
./android/sdk/tools/bin/sdkmanager --list

sudo mv /tmp/android-sdk /opt/android-sdk
export ANDROID_HOME=$HOME/android/sdk
export ANDROID_NDK_HOME=$HOME/android/sdk/ndk-bundle
 
sudo add-apt-repository --yes ppa:ubuntu-toolchain-r/test 
sudo apt-get -qq update

sudo apt-get -qq install --no-install-recommends libgl1-mesa-dev libglib2.0-0 libpulse-dev make git ca-certificates curl xauth libx11-xcb1 libfontconfig1 libdbus-1-3 g++-7 python3 doxygen

curl -Lo /tmp/qpm https://www.qpm.io/download/v0.10.0/linux_386/qpm
sudo install -m 755 /tmp/qpm /usr/local/bin/

curl -Lo /tmp/installer.run https://download.qt.io/official_releases/online_installers/qt-unified-linux-x64-online.run
chmod +x /tmp/installer.run
QT_QPA_PLATFORM=minimal sudo /tmp/installer.run --script tests/travis/linuxy/qt-installer-script.qs --addRepository https://install.skycoder42.de/qtmodules/linux_x64