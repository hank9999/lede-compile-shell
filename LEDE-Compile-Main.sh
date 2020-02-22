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
sudo apt -y install python3
sudo apt -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler

#!/bin/bash
if [ `whoami` = "root" ];then
adduser --disabled-password --gecos "" lede-compile
su lede-compile
else
fi

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
echo "----------------------------------"
echo "          2.  Compile             "
echo "----------------------------------"
cd lede
echo "cd into lede"
echo "-----------------------"
echo "2.1. Download .config  "
echo "-----------------------"
wget -O .config https://raw.githubusercontent.com/hank9999/lede-compile-shell/master/.config
echo "-----------------------"
echo "2.2. Config            "
echo "-----------------------"
make defconfig
echo "-----------------------"
echo "2.3. Start Compiling   "
echo "-----------------------"
set FORCE_UNSAFE_CONFIGURE=1
make -j$(grep 'processor' /proc/cpuinfo | sort -u | wc -l) V=s