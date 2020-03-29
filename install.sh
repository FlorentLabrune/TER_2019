#!/bin/bash
source /opt/ros/kinetic/setup.bash

DIR_MODBUS="/usr/local/include/modbus/modbus.h"
DIR_COURANT=$(pwd)
if [ ! -f $DIR_MODBUS ]; then
	echo "libmodbus have to be intalled, do you want to install it ? [y/n] :"
	read -p "" rep
	if [ "$rep" != "y" ]; then
		exit
	else
		echo -e "you need modbuslib, please run : \n\t sudo install_modbus.sh"
		exit
	fi
fi

cd $DIR_COURANT/MONTRAC/catkin_ws/

catkin_make --force
catkin_make install