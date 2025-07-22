# Freeciv21-msys2
Scripts and documentation to setup and manage an MSYS2 environment on Windows for Freeciv21 development.

![GPLv3 Logo](https://www.gnu.org/graphics/gplv3-127x51.png)<br />
This work is licensed under the GNU GENERAL PUBLIC LICENSE v3. Same as [Freeciv21](https://github.com/longturn/freeciv21 "Freeciv21 GitHub Repo").

# Introduction

The Open Source empire building game [Freeciv21](https://github.com/longturn/freeciv21) is generally meant to compile in a unix-like environment, such as Linux. However, the maintainers of the code do support Windows builds. Typically players of the game will download precompiled install files directly from the Longturn website.

But, what if you want to contribute to Freeciv21 on Windows instead of Linux?  You need a development environment to do that and this github repository is all about getting you up and running.

# Download MSYS
You start by downloading a copy of the MSYS2 environment from - https://www.msys2.org/#installation - these instructions were written by using the `msys2-x86_64-20241208.exe` file.

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

At this point your MSYS2 evironment should be ready to compile an stock 3.x copy of freeciv21.

# Compile Freeciv21

Open https://longturn.readthedocs.io/en/latest/Getting/compile.html and follow the instructions.
