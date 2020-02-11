# Install script for directory: /home/florent/Documents/TER/version_ahmed/catkin_ws/src/commande_locale

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/florent/Documents/TER/version_ahmed/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/commande_locale/msg" TYPE FILE FILES
    "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/commande_locale/msg/Msg_SensorState.msg"
    "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/commande_locale/msg/Msg_StopControl.msg"
    "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/commande_locale/msg/Msg_SwitchControl.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/commande_locale/cmake" TYPE FILE FILES "/home/florent/Documents/TER/version_ahmed/catkin_ws/build/commande_locale/catkin_generated/installspace/commande_locale-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/florent/Documents/TER/version_ahmed/catkin_ws/devel/include/commande_locale")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/florent/Documents/TER/version_ahmed/catkin_ws/devel/share/roseus/ros/commande_locale")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/florent/Documents/TER/version_ahmed/catkin_ws/devel/share/common-lisp/ros/commande_locale")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/florent/Documents/TER/version_ahmed/catkin_ws/devel/share/gennodejs/ros/commande_locale")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/florent/Documents/TER/version_ahmed/catkin_ws/devel/lib/python2.7/dist-packages/commande_locale")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/florent/Documents/TER/version_ahmed/catkin_ws/devel/lib/python2.7/dist-packages/commande_locale")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/florent/Documents/TER/version_ahmed/catkin_ws/build/commande_locale/catkin_generated/installspace/commande_locale.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/commande_locale/cmake" TYPE FILE FILES "/home/florent/Documents/TER/version_ahmed/catkin_ws/build/commande_locale/catkin_generated/installspace/commande_locale-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/commande_locale/cmake" TYPE FILE FILES
    "/home/florent/Documents/TER/version_ahmed/catkin_ws/build/commande_locale/catkin_generated/installspace/commande_localeConfig.cmake"
    "/home/florent/Documents/TER/version_ahmed/catkin_ws/build/commande_locale/catkin_generated/installspace/commande_localeConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/commande_locale" TYPE FILE FILES "/home/florent/Documents/TER/version_ahmed/catkin_ws/src/commande_locale/package.xml")
endif()

