#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>
#include <iostream>

#include "plc_config_actuators.h"

coord identification_act (std::string actuator_nm)
	{
			coord coord_out;
			if (actuator_nm.compare("R1D")) {coord_out.data_mod =1; coord_out.data_pos =0;}
			else if (actuator_nm.compare("R1G")) {coord_out.data_mod =1; coord_out.data_pos =1;}
			else if (actuator_nm.compare("V1")) {coord_out.data_mod =1; coord_out.data_pos =2;}
			else if (actuator_nm.compare("D1")) {coord_out.data_mod =1; coord_out.data_pos =3;}
			else if (actuator_nm.compare("R2D")) {coord_out.data_mod =1; coord_out.data_pos =4;}
			else if (actuator_nm.compare("R2G")) {coord_out.data_mod =1; coord_out.data_pos =5;}
			else if (actuator_nm.compare("V2")) {coord_out.data_mod =1; coord_out.data_pos =6;}
			else if (actuator_nm.compare("D2")) {coord_out.data_mod =1; coord_out.data_pos =7;}
			else if (actuator_nm.compare("ST1")) {coord_out.data_mod =1; coord_out.data_pos =8;}
			else if (actuator_nm.compare("ST2")) {coord_out.data_mod =1; coord_out.data_pos =9;}
			else if (actuator_nm.compare("ST3")) {coord_out.data_mod =1; coord_out.data_pos =10;}
			else if (actuator_nm.compare("ST5")) {coord_out.data_mod =1; coord_out.data_pos =11;}
			else if (actuator_nm.compare("ST4")) {coord_out.data_mod =1; coord_out.data_pos =12;}
			else if (actuator_nm.compare("PI1")) {coord_out.data_mod =1; coord_out.data_pos =13;}
			else if (actuator_nm.compare("PI2")) {coord_out.data_mod =1; coord_out.data_pos =14;}
			else if (actuator_nm.compare("R11D")) {coord_out.data_mod =2; coord_out.data_pos =0;}
			else if (actuator_nm.compare("R11G")) {coord_out.data_mod =2; coord_out.data_pos =1;}
			else if (actuator_nm.compare("V11")) {coord_out.data_mod =2; coord_out.data_pos =2;}
			else if (actuator_nm.compare("D11")) {coord_out.data_mod =2; coord_out.data_pos =3;}
			else if (actuator_nm.compare("R12D")) {coord_out.data_mod =2; coord_out.data_pos =4;}
			else if (actuator_nm.compare("R12G")) {coord_out.data_mod =2; coord_out.data_pos =5;}
			else if (actuator_nm.compare("V12")) {coord_out.data_mod =2; coord_out.data_pos =6;}
			else if (actuator_nm.compare("D12")) {coord_out.data_mod =2; coord_out.data_pos =7;}
			else if (actuator_nm.compare("ST20")) {coord_out.data_mod =2; coord_out.data_pos =8;}
			else if (actuator_nm.compare("ST21")) {coord_out.data_mod =2; coord_out.data_pos =9;}
			else if (actuator_nm.compare("ST24")) {coord_out.data_mod =2; coord_out.data_pos =10;}
			else if (actuator_nm.compare("ST23")) {coord_out.data_mod =2; coord_out.data_pos =11;}
			else if (actuator_nm.compare("ST10")) {coord_out.data_mod =2; coord_out.data_pos =12;}
			else if (actuator_nm.compare("PI3")) {coord_out.data_mod =2; coord_out.data_pos =13;}
			else if (actuator_nm.compare("PI4")) {coord_out.data_mod =2; coord_out.data_pos =14;}
            else actuator_nm = "not existing";
            return coord_out;
	}

