#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>
#include <iostream>

#include "plc_config_actuators.h"

struct coord{
    uint8_t data_mod;
    uint16_t data_pos;
};
coord coord_out;
coord_out identification_act (std::string actuator_nm)
	{
			if (actuator_nm = "R1D" ) {coord_out.data_mod =1; coord_out.data_pos =0;}
			if (actuator_nm = "R1G" ) {coord_out.data_mod =1; coord_out.data_pos =1;}
			if (actuator_nm = "V1" ) {coord_out.data_mod =1; coord_out.data_pos =2;}
			if (actuator_nm = "D1" ) {coord_out.data_mod =1; coord_out.data_pos =3;}
			if (actuator_nm = "R2D" ) {coord_out.data_mod =1; coord_out.data_pos =4;}
			if (actuator_nm = "R2G" ) {coord_out.data_mod =1; coord_out.data_pos =5;}
			if (actuator_nm = "V2" ) {coord_out.data_mod =1; coord_out.data_pos =6;}
			if (actuator_nm = "D2" ) {coord_out.data_mod =1; coord_out.data_pos =7;}
			if (actuator_nm = "ST1" ) {coord_out.data_mod =1; coord_out.data_pos =8;}
			if (actuator_nm = "ST2" ) {coord_out.data_mod =1; coord_out.data_pos =9;}
			if (actuator_nm = "ST3" ) {coord_out.data_mod =1; coord_out.data_pos =10;}
			if (actuator_nm = "ST5" ) {coord_out.data_mod =1; coord_out.data_pos =11;}
			if (actuator_nm = "ST4" ) {coord_out.data_mod =1; coord_out.data_pos =12;}
			if (actuator_nm = "PI1" ) {coord_out.data_mod =1; coord_out.data_pos =13;}
			if (actuator_nm = "PI2" ) {coord_out.data_mod =1; coord_out.data_pos =14;}
			if (actuator_nm = "R11D" ) {coord_out.data_mod =2; coord_out.data_pos =0;}
			if (actuator_nm = "R11G" ) {coord_out.data_mod =2; coord_out.data_pos =1;}
			if (actuator_nm = "V11" ) {coord_out.data_mod =2; coord_out.data_pos =2;}
			if (actuator_nm = "D11" ) {coord_out.data_mod =2; coord_out.data_pos =3;}
			if (actuator_nm = "R12D" ) {coord_out.data_mod =2; coord_out.data_pos =4;}
			if (actuator_nm = "R12G" ) {coord_out.data_mod =2; coord_out.data_pos =5;}
			if (actuator_nm = "V12" ) {coord_out.data_mod =2; coord_out.data_pos =6;}
			if (actuator_nm = "D12" ) {coord_out.data_mod =2; coord_out.data_pos =7;}
			if (actuator_nm = "ST20" ) {coord_out.data_mod =2; coord_out.data_pos =8;}
			if (actuator_nm = "ST21" ) {coord_out.data_mod =2; coord_out.data_pos =9;}
			if (actuator_nm = "ST24" ) {coord_out.data_mod =2; coord_out.data_pos =10;}
			if (actuator_nm = "ST23" ) {coord_out.data_mod =2; coord_out.data_pos =11;}
			if (actuator_nm = "ST10" ) {coord_out.data_mod =2; coord_out.data_pos =12;}
			if (actuator_nm = "PI3" ) {coord_out.data_mod =2; coord_out.data_pos =13;}
			if (actuator_nm = "PI4" ) {coord_out.data_mod =2; coord_out.data_pos =14;}
		 }
               else actuator_nm = "not existing";
               return coord_out.data_mod; coord_out.data_pos;
	}

