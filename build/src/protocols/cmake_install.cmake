# Install script for directory: /home/vagrant/snort3/src/protocols

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/snort/protocols" TYPE FILE FILES
    "/home/vagrant/snort3/src/protocols/arp.h"
    "/home/vagrant/snort3/src/protocols/cisco_meta_data.h"
    "/home/vagrant/snort3/src/protocols/eapol.h"
    "/home/vagrant/snort3/src/protocols/eth.h"
    "/home/vagrant/snort3/src/protocols/icmp4.h"
    "/home/vagrant/snort3/src/protocols/icmp6.h"
    "/home/vagrant/snort3/src/protocols/ip.h"
    "/home/vagrant/snort3/src/protocols/ipv4.h"
    "/home/vagrant/snort3/src/protocols/ipv4_options.h"
    "/home/vagrant/snort3/src/protocols/ipv6.h"
    "/home/vagrant/snort3/src/protocols/gre.h"
    "/home/vagrant/snort3/src/protocols/layer.h"
    "/home/vagrant/snort3/src/protocols/linux_sll.h"
    "/home/vagrant/snort3/src/protocols/mpls.h"
    "/home/vagrant/snort3/src/protocols/packet.h"
    "/home/vagrant/snort3/src/protocols/packet_manager.h"
    "/home/vagrant/snort3/src/protocols/protocol_ids.h"
    "/home/vagrant/snort3/src/protocols/ssl.h"
    "/home/vagrant/snort3/src/protocols/tcp.h"
    "/home/vagrant/snort3/src/protocols/tcp_options.h"
    "/home/vagrant/snort3/src/protocols/teredo.h"
    "/home/vagrant/snort3/src/protocols/token_ring.h"
    "/home/vagrant/snort3/src/protocols/udp.h"
    "/home/vagrant/snort3/src/protocols/wlan.h"
    "/home/vagrant/snort3/src/protocols/vlan.h"
    )
endif()

