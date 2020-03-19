#!/bin/bash
DIR_MODBUS="/usr/local/include/modbus/modbus.h"
DIR_COURANT=$(pwd)
if [ ! -f $DIR_MODBUS ]; then
	echo "libmodbus have to be intalled, do you want to install it ? [y/n] :"
	read -p "" rep
	if [ "$rep" != "y" ]; then
		exit
	elif ! [ -x "$(command -v autoconf)" ]; then
		echo -e "you need autoconf, please run : \n\t sudo apt-get install autoconf"
		exit
	else
		if [ "$EUID" -ne 0 ]
  			then echo "Please run as root"
  			exit
		fi
		git clone https://github.com/stephane/libmodbus.git /tmp/modbus
		cd /tmp/modbus
		./autogen.sh
		./configure
		sudo make install
	fi
fi

cd $DIR_COURANT/MONTRAC/catkin_ws/
./build.sh