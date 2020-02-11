#include "ros/ros.h"
#include "plc_out/outputs.h"
#include "writing_actuators/actuators.h"
#include "commande_plc/actuators.h"
#include "plc_config_actuators.h"
#include "std_msgs/String.h"
#include <cstdlib>
#include <iostream>
using namespace std;

coord identification_act (string actuator_nm);

uint16_t actuators_now[3];

void actCallback (const commande_plc::actuators msg)
{
  ROS_INFO("I heard actuators data: [%d]", msg.actuators_data);
  for (int i=0; i<3; ++i)
  {actuators_now[3] = actuators_data[i];}
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "comm_outputs");
  if (argc != 3)
  {
    ROS_INFO("sending outputs");
  }

  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("set_actuators_data", 1000, actCallback);
  ros::ServiceClient client = n.serviceClient<plc_out::outputs>("sending_outputs");

  plc_out::outputs srv;
  bool call_srv_rslt;

  uint16_t actuators_before[3];


     for (int i=0; i<3; ++i)
       {
         if (actuators_before[i] != actuators_now[i]);
          { 
            srv.request.data_out_module = i +1;
            for (int j=0; j<16; ++j)
             {
              if (((actuators_before[i]>>j) & 1) != ((actuators_now[i]>>j) & 1))
		{  
    	         srv.request.data_out_position = j;
                 srv.request.data_out_value = (actuators_now[i] >> j) & 1;
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
         actuators_before[i] = actuators_now[i];
        }
  
ros::spin();
return 0;
}
