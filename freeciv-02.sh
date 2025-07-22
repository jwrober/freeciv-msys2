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
    git \
    patch \
    python3 \
    unzip \
    zip  

echo "#####"
echo "# Installing clang x86_64 arch specific tools"
echo "#####"
echo "#####"
echo "# Installing clang"
echo "#####"
pacman -Su --noconfirm mingw-w64-clang-x86_64-clang mingw-w64-clang-x86_64-clang-tools-extra
echo "#####"
echo " Installing cmake, ninja, libunwind"
echo "#####"
pacman -Su --noconfirm mingw-w64-clang-x86_64-cmake mingw-w64-clang-x86_64-ninja mingw-w64-clang-x86_64-libunwind
echo "#####"
echo " Installing readline (for the server)"
echo "#####"
pacman -Su --noconfirm mingw-w64-clang-x86_64-readline
echo "#####"
echo "# Installing lua and tolua"
echo "#####"
pacman -Su --noconfirm mingw-w64-clang-x86_64-lua mingw-w64-clang-x86_64-tolua
echo "#####"
echo "# Installing SDL2_mixer"
echo "#####"
pacman -Su --noconfirm mingw-w64-clang-x86_64-SDL2_mixer
echo "#####"
echo "# Installing Qt6"
echo "#####"
pacman -Su --noconfirm mingw-w64-clang-x86_64-qt6-base mingw-w64-clang-x86_64-qt6-svg mingw-w64-clang-x86_64-qt6-multimedia mingw-w64-clang-x86_64-karchive
echo "#####"
echo "# Installing nsis"
echo "#####"
pacman -Su --noconfirm mingw-w64-clang-x86_64-nsis
echo "#####"
echo "# Installing python"
echo "#####"
pacman -Su --noconfirm mingw-w64-clang-x86_64-python-pip mingw-w64-clang-x86_64-python-virtualenv
echo "#####"
echo "# Updating ~/.bash_profile"
echo "#####"
echo "" >> ~/.bash_profile
echo 'PATH=/clang64/bin:${PATH}' >> ~/.bash_profile
echo 'PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:/clang64/lib/pkgconfig:/clang64/share/pkgconfig' >> ~/.bash_profile
echo "MSYSTEM=CLANG64" >> ~/.bash_profile
echo "#####"
echo "# Updating MSYS2 base packages"
echo "#####"
cd /
pacman -Syuu --noconfirm

echo "#####"
echo "# Type \"exit\" to close the MSYS2 shell and reopen for step 3"
echo "#####"

