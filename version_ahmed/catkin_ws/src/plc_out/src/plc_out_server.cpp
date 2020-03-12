#include "ros/ros.h"
#include "plc_out/outputs.h" 
#include <modbus/modbus.h>
#include "std_msgs/String.h"
#include <cstdlib>
#include <iostream>
#include "plc_config_actuators.h"

#define ADDRESS_IP_PLC "192.168.0.102"
#define ADDRESS_INPUTS 4
#define NUMBER_REGISTERS 3


uint8_t actuator_module;
uint16_t actuator_position;
bool actuator_value;

bool receive(plc_out::outputs::Request &req, 
             plc_out::outputs::Response &res)
  {
   actuator_module = req.data_out_module;
   actuator_position = req.data_out_position;
   actuator_value = req.data_out_value;

   std::stringstream ss;
   ss << "OK sending !";
   res.feedback_out = ss.str();

   ROS_INFO ("output module = %d", (uint8_t)req.data_out_module);
   ROS_INFO ("output position = %d", (uint16_t)req.data_out_position);
   ROS_INFO ("output value = %d", (bool)req.data_out_value);


   modbus_t *ap;
   ap = modbus_new_tcp(ADDRESS_IP_PLC, 502);
   modbus_connect(ap);
 
   if (modbus_write_register(ap,actuator_module,actuator_value) > 0) 
     {
        ROS_INFO("Successful writing !");	
     }
   else ROS_INFO("Writing error");

   modbus_close(ap);
   modbus_free(ap);

   return true;
  }


int main(int argc, char **argv)
{ 
  ros::init(argc, argv, "plc_outputs");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("sending_outputs", receive);
  ROS_INFO("Ready to receive changes.");

   ros::spin();

  return 0;
}
