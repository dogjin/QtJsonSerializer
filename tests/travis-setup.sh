#!/bin/bash
set -e

sudo add-apt-repository --yes ppa:beineri/opt-qt59-xenial
sudo apt-get update -qq
sudo apt-get -qq install --no-install-recommends qt59base
