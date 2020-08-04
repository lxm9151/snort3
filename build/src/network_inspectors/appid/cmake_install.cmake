# Install script for directory: /home/vagrant/snort3/src/network_inspectors/appid

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/snort/network_inspectors/appid" TYPE FILE FILES
    "/home/vagrant/snort3/src/network_inspectors/appid/appid_api.h"
    "/home/vagrant/snort3/src/network_inspectors/appid/appid_app_descriptor.h"
    "/home/vagrant/snort3/src/network_inspectors/appid/appid_dns_session.h"
    "/home/vagrant/snort3/src/network_inspectors/appid/appid_http_session.h"
    "/home/vagrant/snort3/src/network_inspectors/appid/appid_session_api.h"
    "/home/vagrant/snort3/src/network_inspectors/appid/appid_types.h"
    "/home/vagrant/snort3/src/network_inspectors/appid/application_ids.h"
    "/home/vagrant/snort3/src/network_inspectors/appid/tp_appid_module_api.h"
    "/home/vagrant/snort3/src/network_inspectors/appid/tp_appid_session_api.h"
    "/home/vagrant/snort3/src/network_inspectors/appid/tp_appid_types.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/vagrant/snort3/build/src/network_inspectors/appid/client_plugins/test/cmake_install.cmake")
  include("/home/vagrant/snort3/build/src/network_inspectors/appid/service_plugins/test/cmake_install.cmake")
  include("/home/vagrant/snort3/build/src/network_inspectors/appid/detector_plugins/test/cmake_install.cmake")
  include("/home/vagrant/snort3/build/src/network_inspectors/appid/test/cmake_install.cmake")

endif()

