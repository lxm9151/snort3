# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vagrant/snort3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vagrant/snort3/build

# Include any dependencies generated for this target.
include src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/depend.make

# Include the progress variables for this target.
include src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/progress.make

# Include the compile flags for this target's objects.
include src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/flags.make

src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.o: src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/flags.make
src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.o: ../src/connectors/tcp_connector/tcp_connector.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.o"
	cd /home/vagrant/snort3/build/src/connectors/tcp_connector && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcp_connector.dir/tcp_connector.cc.o -c /home/vagrant/snort3/src/connectors/tcp_connector/tcp_connector.cc

src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcp_connector.dir/tcp_connector.cc.i"
	cd /home/vagrant/snort3/build/src/connectors/tcp_connector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/connectors/tcp_connector/tcp_connector.cc > CMakeFiles/tcp_connector.dir/tcp_connector.cc.i

src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcp_connector.dir/tcp_connector.cc.s"
	cd /home/vagrant/snort3/build/src/connectors/tcp_connector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/connectors/tcp_connector/tcp_connector.cc -o CMakeFiles/tcp_connector.dir/tcp_connector.cc.s

src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.o.requires:

.PHONY : src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.o.requires

src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.o.provides: src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.o.requires
	$(MAKE) -f src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/build.make src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.o.provides.build
.PHONY : src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.o.provides

src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.o.provides.build: src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.o


src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.o: src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/flags.make
src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.o: ../src/connectors/tcp_connector/tcp_connector_module.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.o"
	cd /home/vagrant/snort3/build/src/connectors/tcp_connector && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.o -c /home/vagrant/snort3/src/connectors/tcp_connector/tcp_connector_module.cc

src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.i"
	cd /home/vagrant/snort3/build/src/connectors/tcp_connector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/connectors/tcp_connector/tcp_connector_module.cc > CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.i

src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.s"
	cd /home/vagrant/snort3/build/src/connectors/tcp_connector && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/connectors/tcp_connector/tcp_connector_module.cc -o CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.s

src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.o.requires:

.PHONY : src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.o.requires

src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.o.provides: src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.o.requires
	$(MAKE) -f src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/build.make src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.o.provides.build
.PHONY : src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.o.provides

src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.o.provides.build: src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.o


tcp_connector: src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.o
tcp_connector: src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.o
tcp_connector: src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/build.make

.PHONY : tcp_connector

# Rule to build all files generated by this target.
src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/build: tcp_connector

.PHONY : src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/build

src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/requires: src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector.cc.o.requires
src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/requires: src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/tcp_connector_module.cc.o.requires

.PHONY : src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/requires

src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/clean:
	cd /home/vagrant/snort3/build/src/connectors/tcp_connector && $(CMAKE_COMMAND) -P CMakeFiles/tcp_connector.dir/cmake_clean.cmake
.PHONY : src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/clean

src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/depend:
	cd /home/vagrant/snort3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vagrant/snort3 /home/vagrant/snort3/src/connectors/tcp_connector /home/vagrant/snort3/build /home/vagrant/snort3/build/src/connectors/tcp_connector /home/vagrant/snort3/build/src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/connectors/tcp_connector/CMakeFiles/tcp_connector.dir/depend

