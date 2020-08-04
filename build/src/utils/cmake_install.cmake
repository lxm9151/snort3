# Install script for directory: /home/vagrant/snort3/src/utils

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/snort/utils" TYPE FILE FILES
    "/home/vagrant/snort3/src/utils/boyer_moore.h"
    "/home/vagrant/snort3/src/utils/cpp_macros.h"
    "/home/vagrant/snort3/src/utils/endian.h"
    "/home/vagrant/snort3/src/utils/event_gen.h"
    "/home/vagrant/snort3/src/utils/infractions.h"
    "/home/vagrant/snort3/src/utils/kmap.h"
    "/home/vagrant/snort3/src/utils/memcap_allocator.h"
    "/home/vagrant/snort3/src/utils/primed_allocator.h"
    "/home/vagrant/snort3/src/utils/safec.h"
    "/home/vagrant/snort3/src/utils/segment_mem.h"
    "/home/vagrant/snort3/src/utils/sflsq.h"
    "/home/vagrant/snort3/src/utils/stats.h"
    "/home/vagrant/snort3/src/utils/util.h"
    "/home/vagrant/snort3/src/utils/util_ber.h"
    "/home/vagrant/snort3/src/utils/util_cstring.h"
    "/home/vagrant/snort3/src/utils/util_jsnorm.h"
    "/home/vagrant/snort3/src/utils/util_unfold.h"
    "/home/vagrant/snort3/src/utils/util_utf.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/vagrant/snort3/build/src/utils/test/cmake_install.cmake")

endif()

