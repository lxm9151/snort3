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
include src/target_based/CMakeFiles/target_based.dir/depend.make

# Include the progress variables for this target.
include src/target_based/CMakeFiles/target_based.dir/progress.make

# Include the compile flags for this target's objects.
include src/target_based/CMakeFiles/target_based.dir/flags.make

src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.o: src/target_based/CMakeFiles/target_based.dir/flags.make
src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.o: ../src/target_based/host_attributes.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.o"
	cd /home/vagrant/snort3/build/src/target_based && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/target_based.dir/host_attributes.cc.o -c /home/vagrant/snort3/src/target_based/host_attributes.cc

src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/target_based.dir/host_attributes.cc.i"
	cd /home/vagrant/snort3/build/src/target_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/target_based/host_attributes.cc > CMakeFiles/target_based.dir/host_attributes.cc.i

src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/target_based.dir/host_attributes.cc.s"
	cd /home/vagrant/snort3/build/src/target_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/target_based/host_attributes.cc -o CMakeFiles/target_based.dir/host_attributes.cc.s

src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.o.requires:

.PHONY : src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.o.requires

src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.o.provides: src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.o.requires
	$(MAKE) -f src/target_based/CMakeFiles/target_based.dir/build.make src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.o.provides.build
.PHONY : src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.o.provides

src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.o.provides.build: src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.o


src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.o: src/target_based/CMakeFiles/target_based.dir/flags.make
src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.o: ../src/target_based/snort_protocols.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.o"
	cd /home/vagrant/snort3/build/src/target_based && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/target_based.dir/snort_protocols.cc.o -c /home/vagrant/snort3/src/target_based/snort_protocols.cc

src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/target_based.dir/snort_protocols.cc.i"
	cd /home/vagrant/snort3/build/src/target_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/target_based/snort_protocols.cc > CMakeFiles/target_based.dir/snort_protocols.cc.i

src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/target_based.dir/snort_protocols.cc.s"
	cd /home/vagrant/snort3/build/src/target_based && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/target_based/snort_protocols.cc -o CMakeFiles/target_based.dir/snort_protocols.cc.s

src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.o.requires:

.PHONY : src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.o.requires

src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.o.provides: src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.o.requires
	$(MAKE) -f src/target_based/CMakeFiles/target_based.dir/build.make src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.o.provides.build
.PHONY : src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.o.provides

src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.o.provides.build: src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.o


target_based: src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.o
target_based: src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.o
target_based: src/target_based/CMakeFiles/target_based.dir/build.make

.PHONY : target_based

# Rule to build all files generated by this target.
src/target_based/CMakeFiles/target_based.dir/build: target_based

.PHONY : src/target_based/CMakeFiles/target_based.dir/build

src/target_based/CMakeFiles/target_based.dir/requires: src/target_based/CMakeFiles/target_based.dir/host_attributes.cc.o.requires
src/target_based/CMakeFiles/target_based.dir/requires: src/target_based/CMakeFiles/target_based.dir/snort_protocols.cc.o.requires

.PHONY : src/target_based/CMakeFiles/target_based.dir/requires

src/target_based/CMakeFiles/target_based.dir/clean:
	cd /home/vagrant/snort3/build/src/target_based && $(CMAKE_COMMAND) -P CMakeFiles/target_based.dir/cmake_clean.cmake
.PHONY : src/target_based/CMakeFiles/target_based.dir/clean

src/target_based/CMakeFiles/target_based.dir/depend:
	cd /home/vagrant/snort3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vagrant/snort3 /home/vagrant/snort3/src/target_based /home/vagrant/snort3/build /home/vagrant/snort3/build/src/target_based /home/vagrant/snort3/build/src/target_based/CMakeFiles/target_based.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/target_based/CMakeFiles/target_based.dir/depend

