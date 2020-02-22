#!/bin/bash
if [ `whoami` = "root" ];then
    adduser --disabled-password --gecos "" lede-compile
    su lede-compile
    echo "Adduser lede-compile"
else
    echo "No need to adduser"
fi