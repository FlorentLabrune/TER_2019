#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>
#include <iostream>

#include "plc_config_sensors.h"

std::string identification_sen (uint8_t data_in_module, uint16_t data_in_position)
	{
		std::string sensor_nm;
		if (data_in_module == 1)
		 {
			if (data_in_position == 1 ) sensor_nm = "PS2";
			if (data_in_position == 2 ) sensor_nm = "PS3";
			if (data_in_position == 3 ) sensor_nm = "PS5";
			if (data_in_position == 4 ) sensor_nm = "PS4";
			if (data_in_position == 5 ) sensor_nm = "D1D";
			if (data_in_position == 6 ) sensor_nm = "D1G";
			if (data_in_position == 7 ) sensor_nm = "CP1";
			if (data_in_position == 8 ) sensor_nm = "CPI1";
			if (data_in_position == 9 ) sensor_nm = "CPI2";
			if (data_in_position == 10 ) sensor_nm = "D2D";
			if (data_in_position == 11 ) sensor_nm = "D2G";
			if (data_in_position == 12 ) sensor_nm = "CP2";
			if (data_in_position == 13 ) sensor_nm = "PS6";
		 }
		else if (data_in_module == 2)
		 {
			if (data_in_position == 0 ) sensor_nm = "PS20";
			if (data_in_position == 1 ) sensor_nm = "PS21";
			if (data_in_position == 2 ) sensor_nm = "PS22";
			if (data_in_position == 3 ) sensor_nm = "PS24";
			if (data_in_position == 4 ) sensor_nm = "PS23";
			if (data_in_position == 5 ) sensor_nm = "D11D";
			if (data_in_position == 6 ) sensor_nm = "D11G";
			if (data_in_position == 7 ) sensor_nm = "CP9";
			if (data_in_position == 8 ) sensor_nm = "CPI7";
			if (data_in_position == 9 ) sensor_nm = "CPI8";
			if (data_in_position == 10 ) sensor_nm = "D12D";
			if (data_in_position == 11 ) sensor_nm = "D12G";
			if (data_in_position == 12 ) sensor_nm = "CP10";
			if (data_in_position == 13 ) sensor_nm = "PS1";
		 }
               else sensor_nm = "not existing";
               return sensor_nm;
	}

