#!/usr/bin/env bash
echo "#####"
echo "# Setting up freeciv dev environment"
echo "#####"
cd ~
mkdir freeciv
cd freeciv
echo "#####"
echo "# Cloning freeciv repo"
echo "#####"
git clone https://github.com/freeciv/freeciv.git git
### Comment master and S3_0 if you don't want to work on those branches
mkdir master
mkdir S3_1
mkdir S3_0
mkdir S2_6
cd git
git checkout S2_4
### Uncomment master and S3_0 worktree lines if you uncommented the same above
echo "#####"
echo "# Setting up freeciv master branch worktree"
echo "#####"
git worktree add ../master/src master
echo "#####"
echo "# Setting up freeciv 3.1.x branch worktree"
echo "#####"
git worktree add ../S3_1/src S3_1
echo "#####"
echo "# Setting up freeciv 3.0.x branch worktree"
echo "#####"
git worktree add ../S3_0/src S3_0
echo "#####"
echo "# Setting up freeciv 2.6.x branch worktree"
echo "#####"
git worktree add ../S2_6/src S2_6
echo "#####"
echo "# Setting up freeciv 2.6.x branch autotools"
echo "#####"
cd ~/freeciv/S2_6/src
./autogen.sh --no-configure-run
echo "#####"
echo "# Setting up freeciv 3.0.x branch autotools"
echo "#####"
cd ~/freeciv/S3_0/src
./autogen.sh --no-configure-run
echo "#####"
echo "# Setting up freeciv 3.1.x branch autotools"
echo "#####"
cd ~/freeciv/S3_1/src
./autogen.sh --no-configure-run
echo "#####"
echo "# Setting up freeciv master branch autotools"
echo "#####"
cd ~/freeciv/master/src
./autogen.sh --no-configure-run

echo "#####"
echo "# Setting up Freeciv21 dev environment"
echo "#####"
cd ~
git clone https://github.com/longturn/freeciv21.git Freeciv21
echo "#####"
echo "# Done"
echo "#####"
