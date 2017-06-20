#!/bin/bash
set -e

sudo add-apt-repository --yes ppa:ubuntu-toolchain-r/test
sudo add-apt-repository --yes ppa:beineri/opt-qt59-trusty
sudo apt-get -qq update
sudo apt-get -qq install g++-7 qt59base
