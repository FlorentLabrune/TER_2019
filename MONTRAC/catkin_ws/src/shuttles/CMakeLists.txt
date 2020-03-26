cmake_minimum_required(VERSION 2.8.3)
project(shuttles)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  genmsg
  message_generation
  aiguillages
)

add_message_files(
	FILES
	msgShuttleChange.msg
	msgShuttleCreate.msg
	Msg_Erreur.msg
	)

add_service_files(
	FILES
    shuttle_id.srv
	)

generate_messages(DEPENDENCIES std_msgs)
catkin_package( CATKIN_DEPENDS roscpp message_runtime)

include_directories(${catkin_INCLUDE_DIRS})

add_executable(main_ShuttleManager src/main_ShuttleManager.cpp src/capteurs.cpp src/FileAttente.cpp)
target_link_libraries(main_ShuttleManager ${catkin_LIBRARIES})
add_dependencies(main_ShuttleManager ${PROJECT_NAME}_gencpp ${${shuttles}_EXPORTED_TARGETS})
