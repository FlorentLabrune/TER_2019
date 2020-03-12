#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>
#include <iostream>

#include "plc_config_sensors.h"

string identification_sen (uint8_t data_in_module, uint16_t data_in_position)
	{
		string sensor_nm;
		if (data_in_module == 1)
		 {
		 	switch data_in_position:
				case 1 :
					sensor_nm = "PS2";
				case 2 :
					sensor_nm = "PS3";
				case 3 :
					sensor_nm = "PS5";
				case 4 :
					sensor_nm = "PS4";
				case 5 :
					sensor_nm = "D1D";
				case 6 :
					sensor_nm = "D1G";
				case 7 :
					sensor_nm = "CP1";
				case 8 : 
					sensor_nm = "CPI1";
				case 9 :
					sensor_nm = "CPI2";
				case 10 :
					sensor_nm = "D2D";
				case 11 : 
					sensor_nm = "D2G";
				case 12 : 
					sensor_nm = "CP2";
				case 13 :
					sensor_nm = "PS6";
		 }
		else if (data_in_module == 2)
		 {
		 	switch data_in_position:
		 		case 0 :
		 			sensor_nm = "PS20"
				case 1 :
					sensor_nm = "PS21";
				case 2 :
					sensor_nm = "PS22";
				case 3 :
					sensor_nm = "PS24";
				case 4 :
					sensor_nm = "PS23";
				case 5 :
					sensor_nm = "D11D";
				case 6 :
					sensor_nm = "D11G";
				case 7 :
					sensor_nm = "CP9";
				case 8 : 
					sensor_nm = "CPI7";
				case 9 :
					sensor_nm = "CPI8";
				case 10 :
					sensor_nm = "D12D";
				case 11 : 
					sensor_nm = "D12G";
				case 12 : 
					sensor_nm = "CP10";
				case 13 :
					sensor_nm = "PS1";
		 }
               else sensor_nm = "not existing";
               return sensor_nm;
	}

