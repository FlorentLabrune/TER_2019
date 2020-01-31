# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "writing_actuators: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iwriting_actuators:/home/projn7cellule/cell_ros_ws/src/writing_actuators/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(writing_actuators_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/projn7cellule/cell_ros_ws/src/writing_actuators/msg/actuators.msg" NAME_WE)
add_custom_target(_writing_actuators_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "writing_actuators" "/home/projn7cellule/cell_ros_ws/src/writing_actuators/msg/actuators.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(writing_actuators
  "/home/projn7cellule/cell_ros_ws/src/writing_actuators/msg/actuators.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/writing_actuators
)

### Generating Services

### Generating Module File
_generate_module_cpp(writing_actuators
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/writing_actuators
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(writing_actuators_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(writing_actuators_generate_messages writing_actuators_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/projn7cellule/cell_ros_ws/src/writing_actuators/msg/actuators.msg" NAME_WE)
add_dependencies(writing_actuators_generate_messages_cpp _writing_actuators_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(writing_actuators_gencpp)
add_dependencies(writing_actuators_gencpp writing_actuators_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS writing_actuators_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(writing_actuators
  "/home/projn7cellule/cell_ros_ws/src/writing_actuators/msg/actuators.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/writing_actuators
)

### Generating Services

### Generating Module File
_generate_module_lisp(writing_actuators
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/writing_actuators
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(writing_actuators_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(writing_actuators_generate_messages writing_actuators_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/projn7cellule/cell_ros_ws/src/writing_actuators/msg/actuators.msg" NAME_WE)
add_dependencies(writing_actuators_generate_messages_lisp _writing_actuators_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(writing_actuators_genlisp)
add_dependencies(writing_actuators_genlisp writing_actuators_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS writing_actuators_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(writing_actuators
  "/home/projn7cellule/cell_ros_ws/src/writing_actuators/msg/actuators.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/writing_actuators
)

### Generating Services

### Generating Module File
_generate_module_py(writing_actuators
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/writing_actuators
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(writing_actuators_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(writing_actuators_generate_messages writing_actuators_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/projn7cellule/cell_ros_ws/src/writing_actuators/msg/actuators.msg" NAME_WE)
add_dependencies(writing_actuators_generate_messages_py _writing_actuators_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(writing_actuators_genpy)
add_dependencies(writing_actuators_genpy writing_actuators_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS writing_actuators_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/writing_actuators)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/writing_actuators
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(writing_actuators_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/writing_actuators)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/writing_actuators
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(writing_actuators_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/writing_actuators)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/writing_actuators\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/writing_actuators
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(writing_actuators_generate_messages_py std_msgs_generate_messages_py)
endif()
