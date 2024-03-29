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
    tar \
    git \
    automake \
    libtool \
    autoconf \
    patch \
    ed \
    python3 \
    python-pip \
    make

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
pacman -Su --noconfirm mingw-w64-x86_64-python3 mingw-w64-x86_64-python-pip
echo "#####"
echo "# Installing drmingw"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-drmingw
echo "#####"
echo "# Installing gcc and gdb"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-gcc mingw-w64-x86_64-gdb 
echo "#####"
echo "# Installing gtk2/3/4"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-gtk2 mingw-w64-x86_64-gtk3 mingw-w64-x86_64-gtk4
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
echo "# Installing SDL2_image, SDL2_ttf, and SDL2_gfx"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-SDL2_image mingw-w64-x86_64-SDL2_ttf mingw-w64-x86_64-SDL2_gfx
echo "#####"
echo "# Installing Qt5"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-qt5 mingw-w64-x86_64-qt5-svg
echo "#####"
echo "# Installing imagemagick"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-imagemagick
echo "#####"
echo "# Installing lua and tolua"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-tolua
echo "#####"
echo "# Installing final dependencies"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-speex mingw-w64-i686-portaudio mingw-w64-x86_64-fluidsynth mingw-w64-x86_64-portaudio
echo "#####"
echo " Installing build dependencies for Freeciv21"
echo "#####"
pacman -Su --noconfirm mingw-w64-x86_64-cmake mingw-w64-x86_64-ninja mingw-w64-x86_64-libunwind mingw-w64-x86_64-karchive-qt5 
pacman -Su --noconfirm mingw-w64-x86_64-python-sphinx
cd ~
pip install sphinx-rtd-theme

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

