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
include daqs/CMakeFiles/daq_hext.dir/depend.make

# Include the progress variables for this target.
include daqs/CMakeFiles/daq_hext.dir/progress.make

# Include the compile flags for this target's objects.
include daqs/CMakeFiles/daq_hext.dir/flags.make

daqs/CMakeFiles/daq_hext.dir/daq_hext.c.o: daqs/CMakeFiles/daq_hext.dir/flags.make
daqs/CMakeFiles/daq_hext.dir/daq_hext.c.o: ../daqs/daq_hext.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object daqs/CMakeFiles/daq_hext.dir/daq_hext.c.o"
	cd /home/vagrant/snort3/build/daqs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/daq_hext.dir/daq_hext.c.o   -c /home/vagrant/snort3/daqs/daq_hext.c

daqs/CMakeFiles/daq_hext.dir/daq_hext.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/daq_hext.dir/daq_hext.c.i"
	cd /home/vagrant/snort3/build/daqs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vagrant/snort3/daqs/daq_hext.c > CMakeFiles/daq_hext.dir/daq_hext.c.i

daqs/CMakeFiles/daq_hext.dir/daq_hext.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/daq_hext.dir/daq_hext.c.s"
	cd /home/vagrant/snort3/build/daqs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vagrant/snort3/daqs/daq_hext.c -o CMakeFiles/daq_hext.dir/daq_hext.c.s

daqs/CMakeFiles/daq_hext.dir/daq_hext.c.o.requires:

.PHONY : daqs/CMakeFiles/daq_hext.dir/daq_hext.c.o.requires

daqs/CMakeFiles/daq_hext.dir/daq_hext.c.o.provides: daqs/CMakeFiles/daq_hext.dir/daq_hext.c.o.requires
	$(MAKE) -f daqs/CMakeFiles/daq_hext.dir/build.make daqs/CMakeFiles/daq_hext.dir/daq_hext.c.o.provides.build
.PHONY : daqs/CMakeFiles/daq_hext.dir/daq_hext.c.o.provides

daqs/CMakeFiles/daq_hext.dir/daq_hext.c.o.provides.build: daqs/CMakeFiles/daq_hext.dir/daq_hext.c.o


# Object files for target daq_hext
daq_hext_OBJECTS = \
"CMakeFiles/daq_hext.dir/daq_hext.c.o"

# External object files for target daq_hext
daq_hext_EXTERNAL_OBJECTS =

daqs/daq_hext.so: daqs/CMakeFiles/daq_hext.dir/daq_hext.c.o
daqs/daq_hext.so: daqs/CMakeFiles/daq_hext.dir/build.make
daqs/daq_hext.so: daqs/CMakeFiles/daq_hext.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared module daq_hext.so"
	cd /home/vagrant/snort3/build/daqs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/daq_hext.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
daqs/CMakeFiles/daq_hext.dir/build: daqs/daq_hext.so

.PHONY : daqs/CMakeFiles/daq_hext.dir/build

daqs/CMakeFiles/daq_hext.dir/requires: daqs/CMakeFiles/daq_hext.dir/daq_hext.c.o.requires

.PHONY : daqs/CMakeFiles/daq_hext.dir/requires

daqs/CMakeFiles/daq_hext.dir/clean:
	cd /home/vagrant/snort3/build/daqs && $(CMAKE_COMMAND) -P CMakeFiles/daq_hext.dir/cmake_clean.cmake
.PHONY : daqs/CMakeFiles/daq_hext.dir/clean

daqs/CMakeFiles/daq_hext.dir/depend:
	cd /home/vagrant/snort3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vagrant/snort3 /home/vagrant/snort3/daqs /home/vagrant/snort3/build /home/vagrant/snort3/build/daqs /home/vagrant/snort3/build/daqs/CMakeFiles/daq_hext.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : daqs/CMakeFiles/daq_hext.dir/depend

