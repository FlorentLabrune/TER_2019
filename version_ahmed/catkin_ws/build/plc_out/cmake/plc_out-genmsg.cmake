# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "plc_out: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(plc_out_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/plc_out/srv/outputs.srv" NAME_WE)
add_custom_target(_plc_out_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "plc_out" "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/plc_out/srv/outputs.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(plc_out
  "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/plc_out/srv/outputs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plc_out
)

### Generating Module File
_generate_module_cpp(plc_out
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plc_out
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(plc_out_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(plc_out_generate_messages plc_out_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/plc_out/srv/outputs.srv" NAME_WE)
add_dependencies(plc_out_generate_messages_cpp _plc_out_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plc_out_gencpp)
add_dependencies(plc_out_gencpp plc_out_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plc_out_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(plc_out
  "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/plc_out/srv/outputs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plc_out
)

### Generating Module File
_generate_module_eus(plc_out
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plc_out
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(plc_out_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(plc_out_generate_messages plc_out_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/plc_out/srv/outputs.srv" NAME_WE)
add_dependencies(plc_out_generate_messages_eus _plc_out_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plc_out_geneus)
add_dependencies(plc_out_geneus plc_out_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plc_out_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(plc_out
  "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/plc_out/srv/outputs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plc_out
)

### Generating Module File
_generate_module_lisp(plc_out
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plc_out
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(plc_out_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(plc_out_generate_messages plc_out_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/plc_out/srv/outputs.srv" NAME_WE)
add_dependencies(plc_out_generate_messages_lisp _plc_out_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plc_out_genlisp)
add_dependencies(plc_out_genlisp plc_out_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plc_out_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(plc_out
  "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/plc_out/srv/outputs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plc_out
)

### Generating Module File
_generate_module_nodejs(plc_out
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plc_out
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(plc_out_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(plc_out_generate_messages plc_out_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/plc_out/srv/outputs.srv" NAME_WE)
add_dependencies(plc_out_generate_messages_nodejs _plc_out_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plc_out_gennodejs)
add_dependencies(plc_out_gennodejs plc_out_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plc_out_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(plc_out
  "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/plc_out/srv/outputs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plc_out
)

### Generating Module File
_generate_module_py(plc_out
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plc_out
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(plc_out_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(plc_out_generate_messages plc_out_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/plc_out/srv/outputs.srv" NAME_WE)
add_dependencies(plc_out_generate_messages_py _plc_out_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plc_out_genpy)
add_dependencies(plc_out_genpy plc_out_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plc_out_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plc_out)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plc_out
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(plc_out_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plc_out)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plc_out
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(plc_out_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plc_out)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plc_out
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(plc_out_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plc_out)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plc_out
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(plc_out_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plc_out)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plc_out\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plc_out
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(plc_out_generate_messages_py std_msgs_generate_messages_py)
endif()
