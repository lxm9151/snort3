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
include src/trace/CMakeFiles/trace.dir/depend.make

# Include the progress variables for this target.
include src/trace/CMakeFiles/trace.dir/progress.make

# Include the compile flags for this target's objects.
include src/trace/CMakeFiles/trace.dir/flags.make

src/trace/CMakeFiles/trace.dir/trace.cc.o: src/trace/CMakeFiles/trace.dir/flags.make
src/trace/CMakeFiles/trace.dir/trace.cc.o: ../src/trace/trace.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/trace/CMakeFiles/trace.dir/trace.cc.o"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/trace.dir/trace.cc.o -c /home/vagrant/snort3/src/trace/trace.cc

src/trace/CMakeFiles/trace.dir/trace.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trace.dir/trace.cc.i"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/trace/trace.cc > CMakeFiles/trace.dir/trace.cc.i

src/trace/CMakeFiles/trace.dir/trace.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trace.dir/trace.cc.s"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/trace/trace.cc -o CMakeFiles/trace.dir/trace.cc.s

src/trace/CMakeFiles/trace.dir/trace.cc.o.requires:

.PHONY : src/trace/CMakeFiles/trace.dir/trace.cc.o.requires

src/trace/CMakeFiles/trace.dir/trace.cc.o.provides: src/trace/CMakeFiles/trace.dir/trace.cc.o.requires
	$(MAKE) -f src/trace/CMakeFiles/trace.dir/build.make src/trace/CMakeFiles/trace.dir/trace.cc.o.provides.build
.PHONY : src/trace/CMakeFiles/trace.dir/trace.cc.o.provides

src/trace/CMakeFiles/trace.dir/trace.cc.o.provides.build: src/trace/CMakeFiles/trace.dir/trace.cc.o


src/trace/CMakeFiles/trace.dir/trace_api.cc.o: src/trace/CMakeFiles/trace.dir/flags.make
src/trace/CMakeFiles/trace.dir/trace_api.cc.o: ../src/trace/trace_api.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/trace/CMakeFiles/trace.dir/trace_api.cc.o"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/trace.dir/trace_api.cc.o -c /home/vagrant/snort3/src/trace/trace_api.cc

src/trace/CMakeFiles/trace.dir/trace_api.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trace.dir/trace_api.cc.i"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/trace/trace_api.cc > CMakeFiles/trace.dir/trace_api.cc.i

src/trace/CMakeFiles/trace.dir/trace_api.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trace.dir/trace_api.cc.s"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/trace/trace_api.cc -o CMakeFiles/trace.dir/trace_api.cc.s

src/trace/CMakeFiles/trace.dir/trace_api.cc.o.requires:

.PHONY : src/trace/CMakeFiles/trace.dir/trace_api.cc.o.requires

src/trace/CMakeFiles/trace.dir/trace_api.cc.o.provides: src/trace/CMakeFiles/trace.dir/trace_api.cc.o.requires
	$(MAKE) -f src/trace/CMakeFiles/trace.dir/build.make src/trace/CMakeFiles/trace.dir/trace_api.cc.o.provides.build
.PHONY : src/trace/CMakeFiles/trace.dir/trace_api.cc.o.provides

src/trace/CMakeFiles/trace.dir/trace_api.cc.o.provides.build: src/trace/CMakeFiles/trace.dir/trace_api.cc.o


src/trace/CMakeFiles/trace.dir/trace_config.cc.o: src/trace/CMakeFiles/trace.dir/flags.make
src/trace/CMakeFiles/trace.dir/trace_config.cc.o: ../src/trace/trace_config.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/trace/CMakeFiles/trace.dir/trace_config.cc.o"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/trace.dir/trace_config.cc.o -c /home/vagrant/snort3/src/trace/trace_config.cc

src/trace/CMakeFiles/trace.dir/trace_config.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trace.dir/trace_config.cc.i"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/trace/trace_config.cc > CMakeFiles/trace.dir/trace_config.cc.i

src/trace/CMakeFiles/trace.dir/trace_config.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trace.dir/trace_config.cc.s"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/trace/trace_config.cc -o CMakeFiles/trace.dir/trace_config.cc.s

src/trace/CMakeFiles/trace.dir/trace_config.cc.o.requires:

.PHONY : src/trace/CMakeFiles/trace.dir/trace_config.cc.o.requires

src/trace/CMakeFiles/trace.dir/trace_config.cc.o.provides: src/trace/CMakeFiles/trace.dir/trace_config.cc.o.requires
	$(MAKE) -f src/trace/CMakeFiles/trace.dir/build.make src/trace/CMakeFiles/trace.dir/trace_config.cc.o.provides.build
.PHONY : src/trace/CMakeFiles/trace.dir/trace_config.cc.o.provides

src/trace/CMakeFiles/trace.dir/trace_config.cc.o.provides.build: src/trace/CMakeFiles/trace.dir/trace_config.cc.o


src/trace/CMakeFiles/trace.dir/trace_log.cc.o: src/trace/CMakeFiles/trace.dir/flags.make
src/trace/CMakeFiles/trace.dir/trace_log.cc.o: ../src/trace/trace_log.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/trace/CMakeFiles/trace.dir/trace_log.cc.o"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/trace.dir/trace_log.cc.o -c /home/vagrant/snort3/src/trace/trace_log.cc

src/trace/CMakeFiles/trace.dir/trace_log.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trace.dir/trace_log.cc.i"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/trace/trace_log.cc > CMakeFiles/trace.dir/trace_log.cc.i

src/trace/CMakeFiles/trace.dir/trace_log.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trace.dir/trace_log.cc.s"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/trace/trace_log.cc -o CMakeFiles/trace.dir/trace_log.cc.s

src/trace/CMakeFiles/trace.dir/trace_log.cc.o.requires:

.PHONY : src/trace/CMakeFiles/trace.dir/trace_log.cc.o.requires

src/trace/CMakeFiles/trace.dir/trace_log.cc.o.provides: src/trace/CMakeFiles/trace.dir/trace_log.cc.o.requires
	$(MAKE) -f src/trace/CMakeFiles/trace.dir/build.make src/trace/CMakeFiles/trace.dir/trace_log.cc.o.provides.build
.PHONY : src/trace/CMakeFiles/trace.dir/trace_log.cc.o.provides

src/trace/CMakeFiles/trace.dir/trace_log.cc.o.provides.build: src/trace/CMakeFiles/trace.dir/trace_log.cc.o


src/trace/CMakeFiles/trace.dir/trace_module.cc.o: src/trace/CMakeFiles/trace.dir/flags.make
src/trace/CMakeFiles/trace.dir/trace_module.cc.o: ../src/trace/trace_module.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/trace/CMakeFiles/trace.dir/trace_module.cc.o"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/trace.dir/trace_module.cc.o -c /home/vagrant/snort3/src/trace/trace_module.cc

src/trace/CMakeFiles/trace.dir/trace_module.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trace.dir/trace_module.cc.i"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/trace/trace_module.cc > CMakeFiles/trace.dir/trace_module.cc.i

src/trace/CMakeFiles/trace.dir/trace_module.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trace.dir/trace_module.cc.s"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/trace/trace_module.cc -o CMakeFiles/trace.dir/trace_module.cc.s

src/trace/CMakeFiles/trace.dir/trace_module.cc.o.requires:

.PHONY : src/trace/CMakeFiles/trace.dir/trace_module.cc.o.requires

src/trace/CMakeFiles/trace.dir/trace_module.cc.o.provides: src/trace/CMakeFiles/trace.dir/trace_module.cc.o.requires
	$(MAKE) -f src/trace/CMakeFiles/trace.dir/build.make src/trace/CMakeFiles/trace.dir/trace_module.cc.o.provides.build
.PHONY : src/trace/CMakeFiles/trace.dir/trace_module.cc.o.provides

src/trace/CMakeFiles/trace.dir/trace_module.cc.o.provides.build: src/trace/CMakeFiles/trace.dir/trace_module.cc.o


src/trace/CMakeFiles/trace.dir/trace_parser.cc.o: src/trace/CMakeFiles/trace.dir/flags.make
src/trace/CMakeFiles/trace.dir/trace_parser.cc.o: ../src/trace/trace_parser.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/trace/CMakeFiles/trace.dir/trace_parser.cc.o"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/trace.dir/trace_parser.cc.o -c /home/vagrant/snort3/src/trace/trace_parser.cc

src/trace/CMakeFiles/trace.dir/trace_parser.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trace.dir/trace_parser.cc.i"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/trace/trace_parser.cc > CMakeFiles/trace.dir/trace_parser.cc.i

src/trace/CMakeFiles/trace.dir/trace_parser.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trace.dir/trace_parser.cc.s"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/trace/trace_parser.cc -o CMakeFiles/trace.dir/trace_parser.cc.s

src/trace/CMakeFiles/trace.dir/trace_parser.cc.o.requires:

.PHONY : src/trace/CMakeFiles/trace.dir/trace_parser.cc.o.requires

src/trace/CMakeFiles/trace.dir/trace_parser.cc.o.provides: src/trace/CMakeFiles/trace.dir/trace_parser.cc.o.requires
	$(MAKE) -f src/trace/CMakeFiles/trace.dir/build.make src/trace/CMakeFiles/trace.dir/trace_parser.cc.o.provides.build
.PHONY : src/trace/CMakeFiles/trace.dir/trace_parser.cc.o.provides

src/trace/CMakeFiles/trace.dir/trace_parser.cc.o.provides.build: src/trace/CMakeFiles/trace.dir/trace_parser.cc.o


src/trace/CMakeFiles/trace.dir/trace_swap.cc.o: src/trace/CMakeFiles/trace.dir/flags.make
src/trace/CMakeFiles/trace.dir/trace_swap.cc.o: ../src/trace/trace_swap.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/trace/CMakeFiles/trace.dir/trace_swap.cc.o"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/trace.dir/trace_swap.cc.o -c /home/vagrant/snort3/src/trace/trace_swap.cc

src/trace/CMakeFiles/trace.dir/trace_swap.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trace.dir/trace_swap.cc.i"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/trace/trace_swap.cc > CMakeFiles/trace.dir/trace_swap.cc.i

src/trace/CMakeFiles/trace.dir/trace_swap.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trace.dir/trace_swap.cc.s"
	cd /home/vagrant/snort3/build/src/trace && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/trace/trace_swap.cc -o CMakeFiles/trace.dir/trace_swap.cc.s

src/trace/CMakeFiles/trace.dir/trace_swap.cc.o.requires:

.PHONY : src/trace/CMakeFiles/trace.dir/trace_swap.cc.o.requires

src/trace/CMakeFiles/trace.dir/trace_swap.cc.o.provides: src/trace/CMakeFiles/trace.dir/trace_swap.cc.o.requires
	$(MAKE) -f src/trace/CMakeFiles/trace.dir/build.make src/trace/CMakeFiles/trace.dir/trace_swap.cc.o.provides.build
.PHONY : src/trace/CMakeFiles/trace.dir/trace_swap.cc.o.provides

src/trace/CMakeFiles/trace.dir/trace_swap.cc.o.provides.build: src/trace/CMakeFiles/trace.dir/trace_swap.cc.o


trace: src/trace/CMakeFiles/trace.dir/trace.cc.o
trace: src/trace/CMakeFiles/trace.dir/trace_api.cc.o
trace: src/trace/CMakeFiles/trace.dir/trace_config.cc.o
trace: src/trace/CMakeFiles/trace.dir/trace_log.cc.o
trace: src/trace/CMakeFiles/trace.dir/trace_module.cc.o
trace: src/trace/CMakeFiles/trace.dir/trace_parser.cc.o
trace: src/trace/CMakeFiles/trace.dir/trace_swap.cc.o
trace: src/trace/CMakeFiles/trace.dir/build.make

.PHONY : trace

# Rule to build all files generated by this target.
src/trace/CMakeFiles/trace.dir/build: trace

.PHONY : src/trace/CMakeFiles/trace.dir/build

src/trace/CMakeFiles/trace.dir/requires: src/trace/CMakeFiles/trace.dir/trace.cc.o.requires
src/trace/CMakeFiles/trace.dir/requires: src/trace/CMakeFiles/trace.dir/trace_api.cc.o.requires
src/trace/CMakeFiles/trace.dir/requires: src/trace/CMakeFiles/trace.dir/trace_config.cc.o.requires
src/trace/CMakeFiles/trace.dir/requires: src/trace/CMakeFiles/trace.dir/trace_log.cc.o.requires
src/trace/CMakeFiles/trace.dir/requires: src/trace/CMakeFiles/trace.dir/trace_module.cc.o.requires
src/trace/CMakeFiles/trace.dir/requires: src/trace/CMakeFiles/trace.dir/trace_parser.cc.o.requires
src/trace/CMakeFiles/trace.dir/requires: src/trace/CMakeFiles/trace.dir/trace_swap.cc.o.requires

.PHONY : src/trace/CMakeFiles/trace.dir/requires

src/trace/CMakeFiles/trace.dir/clean:
	cd /home/vagrant/snort3/build/src/trace && $(CMAKE_COMMAND) -P CMakeFiles/trace.dir/cmake_clean.cmake
.PHONY : src/trace/CMakeFiles/trace.dir/clean

src/trace/CMakeFiles/trace.dir/depend:
	cd /home/vagrant/snort3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vagrant/snort3 /home/vagrant/snort3/src/trace /home/vagrant/snort3/build /home/vagrant/snort3/build/src/trace /home/vagrant/snort3/build/src/trace/CMakeFiles/trace.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/trace/CMakeFiles/trace.dir/depend

