#!/usr/bin/env bash
echo "#####"
echo "# Setting up freeciv21 dev environment"
echo "#####"
cd ~
git clone https://github.com/longturn/freeciv21.git freeciv21
cd freeciv21
cmake . -B build -G Ninja -DCMAKE_INSTALL_PREFIX=$PWD/build/install
cmake --build build --target install
cmake --build build --target package
cmake --build build --target docs
