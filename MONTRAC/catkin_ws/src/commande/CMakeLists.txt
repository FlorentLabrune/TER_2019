cmake_minimum_required(VERSION 2.8.3)
project(commande)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
	roscpp
	std_msgs
	genmsg
	robots
	commande_locale
	shuttles
	message_generation
	)


catkin_package(CATKIN_DEPENDS roscpp message_runtime)

include_directories(${catkin_INCLUDE_DIRS})
include_directories(include ${OpenCV_INCLUDE_DIRS})


add_executable(run src/main_commande.cpp  src/commande.cpp src/capteurs.cpp src/actionneurs.cpp src/communication_baxter.cpp src/RobotsInterface.cpp src/AigsInterface.cpp)
target_link_libraries(run ${catkin_LIBRARIES} ${OpenCV_LIBRARIES})
add_dependencies(run ${PROJECT_NAME}_gencpp ${catkin_EXPORTED_TARGETS})
