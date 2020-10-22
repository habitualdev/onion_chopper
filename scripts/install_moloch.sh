#!/bin/bash

apt install -y meson python-setuptools
git clone https://github.com/aol/moloch

cd moloch
./easybutton-build.sh --install
make config
