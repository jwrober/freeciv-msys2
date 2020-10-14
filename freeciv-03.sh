#!/usr/bin/env bash
echo "#####"
echo "# Setting up freeciv 2.6 dev environment"
echo "#####"
cd ~
mkdir freeciv
cd freeciv
git clone https://github.com/freeciv/freeciv.git git
#mkdir master
#mkdir S3_0
mkdir S2_6
cd git
git checkout S2_4
#git worktree add ../master/src master
#git worktree add ../S3_0/src S3_0
git worktree add ../S2_6/src S2_6
cd ~/freeciv/S2_6/src
# We need a patch for S2_6 to work in latest Msys2 environment from http://forum.freeciv.org/f/viewtopic.php?f=14&t=91611
wget https://www.hostedredmine.com/attachments/download/374154/0004-Msys2-Update-environment-to-200906-level.patch
patch -p1 < 0004-Msys2-Update-environment-to-200906-level.patch
rm 0004-Msys2-Update-environment-to-200906-level.patch
./autogen.sh --no-configure-run
echo "#####"
echo "# Done"
echo "#####"
