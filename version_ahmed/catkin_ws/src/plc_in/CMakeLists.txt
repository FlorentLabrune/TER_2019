cmake_minimum_required(VERSION 2.8.3)
project(plc_in)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
## we have to add the dependency to this package:
  message_generation
)


################################################
## Declare ROS messages, services and actions ##
################################################

## Generate services in the 'srv' folder

## add service file: inputs.srv
 add_service_files(
   FILES
   inputs.srv
  )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   std_msgs
 )


###################################
## catkin specific configuration ##
###################################

catkin_package(
## we have to add the dependency to this package:
   CATKIN_DEPENDS message_runtime
)


###########
## Build ##
###########

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

## we have also to add all this part for excution:
add_executable(plc_in_server src/plc_in_server.cpp src/plc_config_sensors.cpp)
target_link_libraries(plc_in_server ${catkin_LIBRARIES})
add_dependencies(plc_in_server plc_in_gencpp)

add_executable(plc_in_client src/plc_in_client.cpp)
target_link_libraries(plc_in_client ${catkin_LIBRARIES})
add_dependencies(plc_in_client plc_in_gencpp)

## to have communication with modbus protocole:
target_link_libraries(plc_in_client ${catkin_LIBRARIES} modbus)
