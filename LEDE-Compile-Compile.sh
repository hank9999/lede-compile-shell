#!/bin/bash
echo "LEDE-Compile-Compile Shell Only For Ubuntu"
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
make -j$(grep 'processor' /proc/cpuinfo | sort -u | wc -l) V=s