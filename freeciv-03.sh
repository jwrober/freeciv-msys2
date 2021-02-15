#!/usr/bin/env bash
echo "#####"
echo "# Setting up freeciv 2.6 dev environment"
echo "#####"
cd ~
mkdir freeciv
cd freeciv
git clone https://github.com/freeciv/freeciv.git git
### Uncomment master and S3_0 if you want to work on those branches
#mkdir master
#mkdir S3_0
mkdir S2_6
cd git
git checkout S2_4
### Uncomment master and S3_0 worktree lines if you uncommented the same above
#git worktree add ../master/src master
#git worktree add ../S3_0/src S3_0
git worktree add ../S2_6/src S2_6
cd ~/freeciv/S2_6/src
./autogen.sh --no-configure-run
echo "#####"
echo "# Setting up freeciv21 dev environment"
echo "#####"
cd ~
git clone https://github.com/longturn/freeciv21.git
echo "#####"
echo "# Done"
echo "#####"
