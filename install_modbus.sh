#!/bin/bash

if [ "$EUID" -ne 0 ]
  			then echo "Please run as root"
  			exit
		fi
		git clone https://github.com/stephane/libmodbus.git /tmp/modbus
		cd /tmp/modbus
		./autogen.sh
		./configure
		sudo make install