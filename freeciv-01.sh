#!/usr/bin/env bash
echo "#####"
echo "# Updating MSYS2 core packages; shell will exit when complete"
echo "#####"
cd /
pacman -Syuu --noconfirm
