#!/usr/bin/env bash
echo "#####"
echo "# Updating MSYS2 base packages"
echo "#####"
cd /
pacman -Syuu --noconfirm

echo "#####"
echo "# Installing base non-arch specific tools"
echo "#####"
pacman -Su --noconfirm \
    pkgconf \
    git \
    automake \
    libtool \
    autoconf \
    patch \
    ed \
    python3 \
    python-pip \
    make \
    clang

echo "#####"
echo "# Installing mingw x86_64 arch specific tools"
echo "#####"
echo "#####"
echo "# Installing gcc and gdb"
echo "#     Gives: readline, bzip2, and python3"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-gcc mingw-w64-x86_64-gdb 
echo "#####"
echo "# Installing curl"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-curl
echo "#####"
echo "# Installing lua and tolua"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-lua mingw-w64-x86_64-tolua
echo "#####"
echo "# Installing SDL2_mixer"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-SDL2_mixer
echo "#####"
echo " Installing cmake, ninja, libunwind"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-cmake mingw-w64-x86_64-ninja mingw-w64-x86_64-libunwind
echo "#####"
echo "# Installing make"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-make
echo "#####"
echo "# Installing python3 pip and virtual env"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-python-pip mingw-w64-x86_64-python-virtualenv
echo "#####"
echo "# Installing Qt5"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-qt5 mingw-w64-x86_64-qt5-svg mingw-w64-x86_64-karchive-qt5
echo "#####"
echo "# Installing nsis"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-nsis

echo "#####"
echo "# Updating ~/.bash_profile"
echo "#####"

echo "" >> ~/.bash_profile
echo 'PATH=/mingw64/bin:${PATH}' >> ~/.bash_profile
echo 'PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:/mingw64/lib/pkgconfig:/mingw64/share/pkgconfig' >> ~/.bash_profile
echo "MSYSTEM=MINGW64" >> ~/.bash_profile

echo "#####"
echo "# Updating MSYS2 base packages"
echo "#####"
cd /
pacman -Syuu --noconfirm

echo "#####"
echo "# Type \"exit\" to close the MSYS2 shell and reopen for step 3"
echo "#####"

