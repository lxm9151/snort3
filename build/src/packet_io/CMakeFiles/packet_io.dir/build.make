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
include src/packet_io/CMakeFiles/packet_io.dir/depend.make

# Include the progress variables for this target.
include src/packet_io/CMakeFiles/packet_io.dir/progress.make

# Include the compile flags for this target's objects.
include src/packet_io/CMakeFiles/packet_io.dir/flags.make

src/packet_io/CMakeFiles/packet_io.dir/active.cc.o: src/packet_io/CMakeFiles/packet_io.dir/flags.make
src/packet_io/CMakeFiles/packet_io.dir/active.cc.o: ../src/packet_io/active.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/packet_io/CMakeFiles/packet_io.dir/active.cc.o"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/packet_io.dir/active.cc.o -c /home/vagrant/snort3/src/packet_io/active.cc

src/packet_io/CMakeFiles/packet_io.dir/active.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/packet_io.dir/active.cc.i"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/packet_io/active.cc > CMakeFiles/packet_io.dir/active.cc.i

src/packet_io/CMakeFiles/packet_io.dir/active.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/packet_io.dir/active.cc.s"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/packet_io/active.cc -o CMakeFiles/packet_io.dir/active.cc.s

src/packet_io/CMakeFiles/packet_io.dir/active.cc.o.requires:

.PHONY : src/packet_io/CMakeFiles/packet_io.dir/active.cc.o.requires

src/packet_io/CMakeFiles/packet_io.dir/active.cc.o.provides: src/packet_io/CMakeFiles/packet_io.dir/active.cc.o.requires
	$(MAKE) -f src/packet_io/CMakeFiles/packet_io.dir/build.make src/packet_io/CMakeFiles/packet_io.dir/active.cc.o.provides.build
.PHONY : src/packet_io/CMakeFiles/packet_io.dir/active.cc.o.provides

src/packet_io/CMakeFiles/packet_io.dir/active.cc.o.provides.build: src/packet_io/CMakeFiles/packet_io.dir/active.cc.o


src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.o: src/packet_io/CMakeFiles/packet_io.dir/flags.make
src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.o: ../src/packet_io/sfdaq.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.o"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++  $(CXX_DEFINES) -DENABLE_STATIC_DAQ $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/packet_io.dir/sfdaq.cc.o -c /home/vagrant/snort3/src/packet_io/sfdaq.cc

src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/packet_io.dir/sfdaq.cc.i"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++ $(CXX_DEFINES) -DENABLE_STATIC_DAQ $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/packet_io/sfdaq.cc > CMakeFiles/packet_io.dir/sfdaq.cc.i

src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/packet_io.dir/sfdaq.cc.s"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++ $(CXX_DEFINES) -DENABLE_STATIC_DAQ $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/packet_io/sfdaq.cc -o CMakeFiles/packet_io.dir/sfdaq.cc.s

src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.o.requires:

.PHONY : src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.o.requires

src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.o.provides: src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.o.requires
	$(MAKE) -f src/packet_io/CMakeFiles/packet_io.dir/build.make src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.o.provides.build
.PHONY : src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.o.provides

src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.o.provides.build: src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.o


src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.o: src/packet_io/CMakeFiles/packet_io.dir/flags.make
src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.o: ../src/packet_io/sfdaq_config.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.o"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/packet_io.dir/sfdaq_config.cc.o -c /home/vagrant/snort3/src/packet_io/sfdaq_config.cc

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/packet_io.dir/sfdaq_config.cc.i"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/packet_io/sfdaq_config.cc > CMakeFiles/packet_io.dir/sfdaq_config.cc.i

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/packet_io.dir/sfdaq_config.cc.s"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/packet_io/sfdaq_config.cc -o CMakeFiles/packet_io.dir/sfdaq_config.cc.s

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.o.requires:

.PHONY : src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.o.requires

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.o.provides: src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.o.requires
	$(MAKE) -f src/packet_io/CMakeFiles/packet_io.dir/build.make src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.o.provides.build
.PHONY : src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.o.provides

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.o.provides.build: src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.o


src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.o: src/packet_io/CMakeFiles/packet_io.dir/flags.make
src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.o: ../src/packet_io/sfdaq_instance.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.o"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/packet_io.dir/sfdaq_instance.cc.o -c /home/vagrant/snort3/src/packet_io/sfdaq_instance.cc

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/packet_io.dir/sfdaq_instance.cc.i"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/packet_io/sfdaq_instance.cc > CMakeFiles/packet_io.dir/sfdaq_instance.cc.i

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/packet_io.dir/sfdaq_instance.cc.s"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/packet_io/sfdaq_instance.cc -o CMakeFiles/packet_io.dir/sfdaq_instance.cc.s

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.o.requires:

.PHONY : src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.o.requires

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.o.provides: src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.o.requires
	$(MAKE) -f src/packet_io/CMakeFiles/packet_io.dir/build.make src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.o.provides.build
.PHONY : src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.o.provides

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.o.provides.build: src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.o


src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.o: src/packet_io/CMakeFiles/packet_io.dir/flags.make
src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.o: ../src/packet_io/sfdaq_module.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.o"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/packet_io.dir/sfdaq_module.cc.o -c /home/vagrant/snort3/src/packet_io/sfdaq_module.cc

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/packet_io.dir/sfdaq_module.cc.i"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/packet_io/sfdaq_module.cc > CMakeFiles/packet_io.dir/sfdaq_module.cc.i

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/packet_io.dir/sfdaq_module.cc.s"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/packet_io/sfdaq_module.cc -o CMakeFiles/packet_io.dir/sfdaq_module.cc.s

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.o.requires:

.PHONY : src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.o.requires

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.o.provides: src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.o.requires
	$(MAKE) -f src/packet_io/CMakeFiles/packet_io.dir/build.make src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.o.provides.build
.PHONY : src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.o.provides

src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.o.provides.build: src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.o


src/packet_io/CMakeFiles/packet_io.dir/trough.cc.o: src/packet_io/CMakeFiles/packet_io.dir/flags.make
src/packet_io/CMakeFiles/packet_io.dir/trough.cc.o: ../src/packet_io/trough.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/packet_io/CMakeFiles/packet_io.dir/trough.cc.o"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/packet_io.dir/trough.cc.o -c /home/vagrant/snort3/src/packet_io/trough.cc

src/packet_io/CMakeFiles/packet_io.dir/trough.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/packet_io.dir/trough.cc.i"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/packet_io/trough.cc > CMakeFiles/packet_io.dir/trough.cc.i

src/packet_io/CMakeFiles/packet_io.dir/trough.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/packet_io.dir/trough.cc.s"
	cd /home/vagrant/snort3/build/src/packet_io && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/packet_io/trough.cc -o CMakeFiles/packet_io.dir/trough.cc.s

src/packet_io/CMakeFiles/packet_io.dir/trough.cc.o.requires:

.PHONY : src/packet_io/CMakeFiles/packet_io.dir/trough.cc.o.requires

src/packet_io/CMakeFiles/packet_io.dir/trough.cc.o.provides: src/packet_io/CMakeFiles/packet_io.dir/trough.cc.o.requires
	$(MAKE) -f src/packet_io/CMakeFiles/packet_io.dir/build.make src/packet_io/CMakeFiles/packet_io.dir/trough.cc.o.provides.build
.PHONY : src/packet_io/CMakeFiles/packet_io.dir/trough.cc.o.provides

src/packet_io/CMakeFiles/packet_io.dir/trough.cc.o.provides.build: src/packet_io/CMakeFiles/packet_io.dir/trough.cc.o


packet_io: src/packet_io/CMakeFiles/packet_io.dir/active.cc.o
packet_io: src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.o
packet_io: src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.o
packet_io: src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.o
packet_io: src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.o
packet_io: src/packet_io/CMakeFiles/packet_io.dir/trough.cc.o
packet_io: src/packet_io/CMakeFiles/packet_io.dir/build.make

.PHONY : packet_io

# Rule to build all files generated by this target.
src/packet_io/CMakeFiles/packet_io.dir/build: packet_io

.PHONY : src/packet_io/CMakeFiles/packet_io.dir/build

src/packet_io/CMakeFiles/packet_io.dir/requires: src/packet_io/CMakeFiles/packet_io.dir/active.cc.o.requires
src/packet_io/CMakeFiles/packet_io.dir/requires: src/packet_io/CMakeFiles/packet_io.dir/sfdaq.cc.o.requires
src/packet_io/CMakeFiles/packet_io.dir/requires: src/packet_io/CMakeFiles/packet_io.dir/sfdaq_config.cc.o.requires
src/packet_io/CMakeFiles/packet_io.dir/requires: src/packet_io/CMakeFiles/packet_io.dir/sfdaq_instance.cc.o.requires
src/packet_io/CMakeFiles/packet_io.dir/requires: src/packet_io/CMakeFiles/packet_io.dir/sfdaq_module.cc.o.requires
src/packet_io/CMakeFiles/packet_io.dir/requires: src/packet_io/CMakeFiles/packet_io.dir/trough.cc.o.requires

.PHONY : src/packet_io/CMakeFiles/packet_io.dir/requires

src/packet_io/CMakeFiles/packet_io.dir/clean:
	cd /home/vagrant/snort3/build/src/packet_io && $(CMAKE_COMMAND) -P CMakeFiles/packet_io.dir/cmake_clean.cmake
.PHONY : src/packet_io/CMakeFiles/packet_io.dir/clean

src/packet_io/CMakeFiles/packet_io.dir/depend:
	cd /home/vagrant/snort3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vagrant/snort3 /home/vagrant/snort3/src/packet_io /home/vagrant/snort3/build /home/vagrant/snort3/build/src/packet_io /home/vagrant/snort3/build/src/packet_io/CMakeFiles/packet_io.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/packet_io/CMakeFiles/packet_io.dir/depend

