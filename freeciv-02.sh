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
    make \
    cmake \
#    gettext \
    pkg-config \
    tar \
    git \
    automake \
    libtool \
    autoconf \
    patch \
    ed \
    python3

echo "#####"
echo "# Installing mingw x86_64 arch specific tools"
echo "#####"
echo "#####"
echo "# Installing curl"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-curl
echo "#####"
echo "# Installing make"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-make
echo "#####"
echo "# Installing python3"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-python3
echo "#####"
echo "# Installing drmingw"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-drmingw
echo "#####"
echo "# Installing gcc"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-gcc
echo "#####"
echo "# Installing gtk2"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-gtk2
echo "#####"
echo "# Installing gtk3"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-gtk3
echo "#####"
echo "# Installing meson"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-meson
echo "#####"
echo "# Installing nsis"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-nsis
echo "#####"
echo "# Installing SDL2_mixer"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-SDL2_mixer
echo "#####"
echo "# Installing SDL2_image"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-SDL2_image
echo "#####"
echo "# Installing SDL2_ttf"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-SDL2_ttf
echo "#####"
echo "# Installing SDL2_gfx"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-SDL2_gfx
echo "#####"
echo "# Installing qt5"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-qt5
echo "#####"
echo "# Installing imagemagick"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-imagemagick
echo "#####"
echo "# Installing tolua"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-tolua
echo "#####"
echo "# Installing speex"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-speex

echo "#####"
echo "# Updating ~/.bash_profile"
echo "#####"

echo "" >> ~/.bash_profile
echo 'PATH=/mingw64/bin:${PATH}' >> ~/.bash_profile
echo 'PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:/mingw64/lib/pkgconfig:/mingw64/share/pkgconfig' >> ~/.bash_profile
#echo "CONFIG_SITE=/mingw64/etc/config.site" >> ~/.bash_profile
echo "MSYSTEM=MINGW64" >> ~/.bash_profile

echo "#####"
echo "# Type \"exit\" to close the MSYS2 shell and reopen for step 3"
echo "#####"

