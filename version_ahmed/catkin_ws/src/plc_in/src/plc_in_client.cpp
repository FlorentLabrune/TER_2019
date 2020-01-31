#include "ros/ros.h"
#include <modbus/modbus.h>
#include "plc_in/inputs.h"
#include "std_msgs/String.h"
#include <cstdlib>
#include <iostream>


#define ADDRESS_IP_PLC "192.168.0.102"
#define ADDRESS_INPUTS 1
#define NUMBER_REGISTERS 3

int main(int argc, char **argv)
{

  ros::init(argc, argv, "plc_inputs");

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<plc_in::inputs>("sending_inputs");

  if (argc != 3)
  {
    ROS_INFO("usage: sending_inputs");
  }

  ros::Rate loop_rate(3000);
  
  plc_in::inputs srv;
  bool call_srv_rslt;

  modbus_t *ap;
  ap = modbus_new_tcp(ADDRESS_IP_PLC, 502);
  modbus_connect(ap);

  uint16_t state_now[3];
  uint16_t state_before[3];

  if (modbus_read_registers(ap,ADDRESS_INPUTS,NUMBER_REGISTERS, state_now) > 0) 
    {
	ROS_INFO("Successful reading !");	
    }
  else  ROS_INFO("Reading error");

  for (int i=0; i<3; ++i)
    {
     state_before[i] = state_now[i];
    }

  while (ros::ok())
  {
   modbus_read_registers(ap, ADDRESS_INPUTS, NUMBER_REGISTERS, state_now);

     for (int i=0; i<3; ++i)
       {
          if (state_now[i] != state_before[i])
          {
            srv.request.data_in_module = i +1;
            for (int j=0; j<16; ++j)
             {
              if (((state_now[i]>>j) & 1) != ((state_before[i]>>j) & 1))
		{  
    	         srv.request.data_in_position = j;
                 srv.request.data_in_value = (state_now[i] >> j) & 1;
                 call_srv_rslt = client.call(srv);
                 if (call_srv_rslt) 
	           {
      		     ROS_INFO("feedback reception: %s", srv.response.feedback_in.c_str());
      		     call_srv_rslt = 0;
      	           }
     	         else
      	           {
          	     ROS_ERROR("Failed to call service sending_inputs");
                   }
	       }
             }
          }
       } 

     for (int i=0; i<3; ++i)
        {
         state_before[i] = state_now[i];
        }
   loop_rate.sleep();
  }

  modbus_close(ap);
  modbus_free(ap);
 
return 0;
}
