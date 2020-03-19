cmake_minimum_required(VERSION 2.8.3)
project(commande_plc)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
## we have to add the dependency to this package:
  message_generation
  plc_out
  plc_in
)

################################################
## Declare ROS messages, services and actions ##
################################################


## Generate messages in the 'msg' folder
 add_message_files(
   FILES
   actuators.msg
   sensors.msg
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


add_executable(commande_plc src/commande_plc.cpp)
target_link_libraries(commande_plc ${catkin_LIBRARIES})
add_dependencies(commande_plc commande_plc_generate_messages_cpp ${catkin_EXPORTED_TARGETS})
