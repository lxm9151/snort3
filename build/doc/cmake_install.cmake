# Install script for directory: /home/vagrant/snort3/doc

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/snort" TYPE FILE FILES
    "/home/vagrant/snort3/build/doc/commands.txt"
    "/home/vagrant/snort3/build/doc/config.txt"
    "/home/vagrant/snort3/build/doc/counts.txt"
    "/home/vagrant/snort3/build/doc/modules.txt"
    "/home/vagrant/snort3/build/doc/plugins.txt"
    "/home/vagrant/snort3/build/doc/options.txt"
    "/home/vagrant/snort3/build/doc/signals.txt"
    "/home/vagrant/snort3/build/doc/help.txt"
    "/home/vagrant/snort3/build/doc/builtin.txt"
    "/home/vagrant/snort3/build/doc/gids.txt"
    "/home/vagrant/snort3/build/doc/basic.txt"
    "/home/vagrant/snort3/build/doc/codec.txt"
    "/home/vagrant/snort3/build/doc/connector.txt"
    "/home/vagrant/snort3/build/doc/data.txt"
    "/home/vagrant/snort3/build/doc/inspector.txt"
    "/home/vagrant/snort3/build/doc/ips_action.txt"
    "/home/vagrant/snort3/build/doc/ips_option.txt"
    "/home/vagrant/snort3/build/doc/logger.txt"
    "/home/vagrant/snort3/build/doc/version.txt"
    "/home/vagrant/snort3/build/doc/snort2lua_cmds.txt"
    "/home/vagrant/snort3/doc/active.txt"
    "/home/vagrant/snort3/doc/appid.txt"
    "/home/vagrant/snort3/doc/binder.txt"
    "/home/vagrant/snort3/doc/building.txt"
    "/home/vagrant/snort3/doc/byte_extract.txt"
    "/home/vagrant/snort3/doc/byte_jump.txt"
    "/home/vagrant/snort3/doc/byte_math.txt"
    "/home/vagrant/snort3/doc/byte_test.txt"
    "/home/vagrant/snort3/doc/concepts.txt"
    "/home/vagrant/snort3/doc/connectors.txt"
    "/home/vagrant/snort3/doc/daq.txt"
    "/home/vagrant/snort3/doc/dcerpc.txt"
    "/home/vagrant/snort3/doc/differences.txt"
    "/home/vagrant/snort3/doc/enviro.txt"
    "/home/vagrant/snort3/doc/errors.txt"
    "/home/vagrant/snort3/doc/extending.txt"
    "/home/vagrant/snort3/doc/features.txt"
    "/home/vagrant/snort3/doc/file_processing.txt"
    "/home/vagrant/snort3/doc/ftp.txt"
    "/home/vagrant/snort3/doc/high_availability.txt"
    "/home/vagrant/snort3/doc/http_inspect.txt"
    "/home/vagrant/snort3/doc/http2_inspect.txt"
    "/home/vagrant/snort3/doc/overview.txt"
    "/home/vagrant/snort3/doc/params.txt"
    "/home/vagrant/snort3/doc/perf_monitor.txt"
    "/home/vagrant/snort3/doc/pop_imap.txt"
    "/home/vagrant/snort3/doc/port_scan.txt"
    "/home/vagrant/snort3/doc/reference.txt"
    "/home/vagrant/snort3/doc/reload_limitations.txt"
    "/home/vagrant/snort3/doc/sensitive_data.txt"
    "/home/vagrant/snort3/doc/side_channel.txt"
    "/home/vagrant/snort3/doc/smtp.txt"
    "/home/vagrant/snort3/doc/snort2lua.txt"
    "/home/vagrant/snort3/doc/snort2x.png"
    "/home/vagrant/snort3/doc/snort3x.png"
    "/home/vagrant/snort3/doc/snort_manual.html"
    "/home/vagrant/snort3/doc/snort_manual.pdf"
    "/home/vagrant/snort3/doc/snort_manual.text"
    "/home/vagrant/snort3/doc/snort_manual.txt"
    "/home/vagrant/snort3/doc/snorty.png"
    "/home/vagrant/snort3/doc/style.txt"
    "/home/vagrant/snort3/doc/telnet.txt"
    "/home/vagrant/snort3/doc/terms.txt"
    "/home/vagrant/snort3/doc/testing_numerical_values.txt"
    "/home/vagrant/snort3/doc/trace.txt"
    "/home/vagrant/snort3/doc/tutorial.txt"
    "/home/vagrant/snort3/doc/usage.txt"
    "/home/vagrant/snort3/doc/wizard.txt"
    "/home/vagrant/snort3/doc/config_changes.txt"
    )
endif()

