# freeciv-msys2
Scripts and documentation to setup and manage an MSYS2 environment on Windows for freeciv development.

![GPLv3 Logo](https://www.gnu.org/graphics/gplv3-127x51.png)<br />
This work is licensed under the GNU GENERAL PUBLIC LICENSE v3. Same as [freeciv](https://github.com/freeciv/freeciv "freeciv GitHub Repo").

# Introduction

The Open Source empire building game [freeciv](http://www.freeciv.org/) is generally meant to compile in a unix-like environment, such as Linux. However, the maintainers of the code do support Windows builds. Typically players of the game will download precompiled install files directly from the freeciv.org website.

But, what if you want to contribute to freeciv on Windows instead of Linux?  You need a development environment to do that and this github repository is all about getting you up and running.

# Download MSYS
You start by downloading a copy of the MSYS2 environment from Sourceforge - https://sourceforge.net/projects/msys2/files/Base/x86_64/ - these instructions were written by using the `msys2-x86_64-20210105.exe` file.

Once downloaded, run the `EXE` and install to the `C:\Tools` folder as `C:\Tools\msys64`. (hint: The author does not like installing things to the root of his C:\).

Take the install defaults, except for location and then when finished you are prompted to start MSYS2. 

# Setup the Environment

A DOS-like window will appear and you will be placed on what looks like a Linux shell. MSYS2 is a emulation layer so it does run `bash` as the shell.

Enter `cd /` in the window to go to the root (`/`) folder in the shell.

Now download the three scripts you need to run in order.

    wget https://raw.githubusercontent.com/jwrober/freeciv-msys2/main/freeciv-01.sh
    wget https://raw.githubusercontent.com/jwrober/freeciv-msys2/main/freeciv-02.sh
    wget https://raw.githubusercontent.com/jwrober/freeciv-msys2/main/freeciv-03.sh

Now run the first script:

    ./freeciv-01.sh

The first script will close the terminal window when it is complete. Run (double-click) `C:\Tools\msys64\msys2_shell.cmd` to open the shell again.

Now run the second script:

    cd /
    ./freeciv-02.sh
    exit

We set some environment variables at the end of the second script, so we need to reopen the shell again for step 3.  Once a new shell is open, run step 3:

    cd /
    ./freeciv-03.sh

At this point your MSYS2 evironment should be ready to compile an stock 2.6.x copy of freeciv.

# Compile freeciv

To compile you need to enter a specific directory in the source tree.

    cd ~/freeciv/S2_6/src/win32/installer_msys2

Once there you can compile any client you like. For example to compile the Qt client, use this command

    make EXTRA_CONFIG='--build=x86_64-w64-mingw32 --host=x86_64-w64-mingw32 \
    --target=x86_64-w64-mingw32 --enable-freeciv-manual=html --enable-debug=yes' \
    CFLAGS='-O2' CXXFLAGS='-O2' INSTSUB='usr' qt-installer

The other clients can be compiled by changing the last parameter away from `qt-installer` to one of the following:
* `all` -- NOTE: `all` does not do all the clients. It only does the `sdl2-installer`, `ruledit-installer`, `qt-installer`, and `gtk3.22-installer`
* `gtk2-installer`
* `gtk3-installer`
* `gtk3.22-installer`
* `sdl2-installer`

If you would like to compile the ruleset editor, use this command

    make EXTRA_CONFIG='--build=x86_64-w64-mingw32 --host=x86_64-w64-mingw32 \
    --target=x86_64-w64-mingw32' CFLAGS='-O2' CXXFLAGS='-O2' ruledit-installer

# Compile Freeciv21

Open https://longturn.readthedocs.io/en/latest/General/install.html and follow the instructions.
