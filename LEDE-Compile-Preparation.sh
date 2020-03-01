#!/bin/bash
echo "LEDE-Compile-Preparation Shell Only For Ubuntu"
echo "Now Please Allow sudo"
sudo uname -v
echo "----------------------------------"
echo "1. Preparation Before Compilation"
echo "----------------------------------"
echo ""
echo "------------------------"
echo "1.1. Update Soft Source"
echo "------------------------"
sudo apt update
echo "-----------------------"
echo "1.2. Install Softs"
echo "-----------------------"
# From https://build-scripts.project-openwrt.eu.org/init_build_environment.sh
sudo apt full-upgrade -y
sudo apt install -y build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core p7zip p7zip-full msmtp libssl-dev texinfo libreadline-dev libglib2.0-dev xmlto qemu-utils libelf-dev autoconf automake libtool autopoint ccache curl wget vim nano python python3 python-pip python3-pip python-ply python3-ply haveged lrzsz device-tree-compiler scons squashfs-tools
sudo apt install -y gcc-8 g++-8 gcc-8-multilib g++-8-multilib
sudo ln -sf "/usr/bin/gcc-8" "/usr/bin/gcc"
sudo ln -sf "/usr/bin/g++-8" "/usr/bin/g++"
sudo ln -sf "/usr/bin/gcc-ar-8" "/usr/bin/gcc-ar"
sudo ln -sf "/usr/bin/gcc-nm-8" "/usr/bin/gcc-nm"
sudo ln -sf "/usr/bin/gcc-ranlib-8" "/usr/bin/gcc-ranlib"
sudo apt install -y nodejs yarn
npm config set registry "https://registry.npm.taobao.org/" --global
yarn config set registry "https://registry.npm.taobao.org/" --global
# sudo apt install -y build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core p7zip p7zip-full msmtp libssl-dev texinfo libreadline-dev libglib2.0-dev xmlto qemu-utils libelf-dev autoconf automake libtool autopoint ccache curl wget vim nano python python3 python-pip python3-pip python-ply python3-ply haveged lrzsz device-tree-compiler scons squashfs-tools
# sudo bash <(curl -s https://build-scripts.project-openwrt.eu.org/init_build_environment.sh)
echo "-----------------------"
echo "1.3. Clone Source code"
echo "-----------------------"
git clone https://github.com/coolsnowwolf/lede
cd lede
echo "cd into lede"
echo "-----------------------"
echo "1.4. Update Feeds"
echo "-----------------------"
./scripts/feeds update -a
echo "-----------------------"
echo "1.5. Install Feeds"
echo "-----------------------"
./scripts/feeds install -a
echo "----------------------------------"
echo "         Preparation Ok"
echo "----------------------------------"
