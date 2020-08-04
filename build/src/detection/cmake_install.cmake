# Install script for directory: /home/vagrant/snort3/src/detection

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local/snort")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/snort/detection" TYPE FILE FILES
    "/home/vagrant/snort3/src/detection/detect.h"
    "/home/vagrant/snort3/src/detection/detection_engine.h"
    "/home/vagrant/snort3/src/detection/detection_options.h"
    "/home/vagrant/snort3/src/detection/detection_util.h"
    "/home/vagrant/snort3/src/detection/detect_trace.h"
    "/home/vagrant/snort3/src/detection/ips_context.h"
    "/home/vagrant/snort3/src/detection/ips_context_chain.h"
    "/home/vagrant/snort3/src/detection/ips_context_data.h"
    "/home/vagrant/snort3/src/detection/regex_offload.h"
    "/home/vagrant/snort3/src/detection/rule_option_types.h"
    "/home/vagrant/snort3/src/detection/rules.h"
    "/home/vagrant/snort3/src/detection/signature.h"
    "/home/vagrant/snort3/src/detection/treenodes.h"
    )
endif()

