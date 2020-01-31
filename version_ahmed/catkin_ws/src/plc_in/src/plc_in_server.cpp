#include "ros/ros.h"
#include "plc_in/inputs.h" 
#include "reading_sensors/sensors.h"
#include "commande_plc/sensors.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>
#include <iostream>

#include "plc_config_sensors.h"

using namespace std;

std::string identification_sen (uint8_t data_in_module, uint16_t data_in_position);

uint8_t sensor_module;
uint16_t sensor_position;
bool sensor_value;
std::string sensor;


bool receive(plc_in::inputs::Request &req, 
             plc_in::inputs::Response &res)
  {

   sensor_module = req.data_in_module;
   sensor_position = req.data_in_position;
   sensor_value = req.data_in_value;

   sensor = identification_sen (sensor_module, sensor_position);
   std::stringstream ss;
   ss << "OK sending";
   res.feedback_in = ss.str();
   ROS_INFO ("[request] received change of : %s", sensor.c_str());
   ROS_INFO ("input module = %d", (uint8_t)req.data_in_module);
   ROS_INFO ("input position = %d", (uint16_t)req.data_in_position);
   ROS_INFO ("input value = %d", (bool)req.data_in_value);
   ROS_INFO ("back response: [%s]", res.feedback_in.c_str());
   return true;
  }


int main(int argc, char **argv)
{ 
  ros::init(argc, argv, "communication_inputs");
  ros::NodeHandle n;

  ros::Publisher pub = n.advertise<commande_plc::sensors>("set_sensors_data", 1000);
  ros::Rate loop_rate(100);

  ros::ServiceServer service = n.advertiseService("sending_inputs", receive);
  ROS_INFO("Ready to receive changes.");

while (ros::ok())
  {
    commande_plc::sensors msg;
    //msg.actuators_data = atoll(argv[1]);
    ((msg.actuators_data[sensor_module]>>sensor_position) & 1) = sensor_value;
    pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
  }

  ros::spin();
  return 0;

}