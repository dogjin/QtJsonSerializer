#!/bin/bash
set -ex

sudo add-apt-repository --yes ppa:ubuntu-toolchain-r/test
sudo add-apt-repository --yes ppa:beineri/opt-qt59-trusty
sudo apt-get update
sudo apt-get -y install g++-7 qt59base
