cmake_minimum_required(VERSION 2.8.3)
project(plc_out)

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
   outputs.srv
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
    INCLUDE_DIRS include
    LIBRARIES ${PROJECT_NAME}
    CATKIN_DEPENDS roscpp
)


###########
## Build ##
###########

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_library(${PROJECT_NAME}
  src/plc_config_actuators.cpp
)
target_link_libraries(${PROJECT_NAME} ${catkin_LIBRARIES} ${Boost_LIBRARIES} ${GSTREAMER_LIBRARIES})


## we have also to add all this part for excution:
add_executable(plc_out_server src/plc_out_server.cpp)
target_link_libraries(plc_out_server ${catkin_LIBRARIES})
add_dependencies(plc_out_server plc_out_gencpp)

add_executable(plc_out_client src/plc_out_client.cpp)
target_link_libraries(plc_out_client ${catkin_LIBRARIES})
add_dependencies(plc_out_client plc_out_gencpp)

## to have communication with modbus protocole:
target_link_libraries(plc_out_server ${catkin_LIBRARIES} modbus)
