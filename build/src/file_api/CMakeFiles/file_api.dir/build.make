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
include src/file_api/CMakeFiles/file_api.dir/depend.make

# Include the progress variables for this target.
include src/file_api/CMakeFiles/file_api.dir/progress.make

# Include the compile flags for this target's objects.
include src/file_api/CMakeFiles/file_api.dir/flags.make

src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.o: src/file_api/CMakeFiles/file_api.dir/flags.make
src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.o: ../src/file_api/circular_buffer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.o"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/file_api.dir/circular_buffer.cc.o -c /home/vagrant/snort3/src/file_api/circular_buffer.cc

src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_api.dir/circular_buffer.cc.i"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/file_api/circular_buffer.cc > CMakeFiles/file_api.dir/circular_buffer.cc.i

src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_api.dir/circular_buffer.cc.s"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/file_api/circular_buffer.cc -o CMakeFiles/file_api.dir/circular_buffer.cc.s

src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.o.requires:

.PHONY : src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.o.requires

src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.o.provides: src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.o.requires
	$(MAKE) -f src/file_api/CMakeFiles/file_api.dir/build.make src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.o.provides.build
.PHONY : src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.o.provides

src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.o.provides.build: src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.o


src/file_api/CMakeFiles/file_api.dir/file_capture.cc.o: src/file_api/CMakeFiles/file_api.dir/flags.make
src/file_api/CMakeFiles/file_api.dir/file_capture.cc.o: ../src/file_api/file_capture.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/file_api/CMakeFiles/file_api.dir/file_capture.cc.o"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/file_api.dir/file_capture.cc.o -c /home/vagrant/snort3/src/file_api/file_capture.cc

src/file_api/CMakeFiles/file_api.dir/file_capture.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_api.dir/file_capture.cc.i"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/file_api/file_capture.cc > CMakeFiles/file_api.dir/file_capture.cc.i

src/file_api/CMakeFiles/file_api.dir/file_capture.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_api.dir/file_capture.cc.s"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/file_api/file_capture.cc -o CMakeFiles/file_api.dir/file_capture.cc.s

src/file_api/CMakeFiles/file_api.dir/file_capture.cc.o.requires:

.PHONY : src/file_api/CMakeFiles/file_api.dir/file_capture.cc.o.requires

src/file_api/CMakeFiles/file_api.dir/file_capture.cc.o.provides: src/file_api/CMakeFiles/file_api.dir/file_capture.cc.o.requires
	$(MAKE) -f src/file_api/CMakeFiles/file_api.dir/build.make src/file_api/CMakeFiles/file_api.dir/file_capture.cc.o.provides.build
.PHONY : src/file_api/CMakeFiles/file_api.dir/file_capture.cc.o.provides

src/file_api/CMakeFiles/file_api.dir/file_capture.cc.o.provides.build: src/file_api/CMakeFiles/file_api.dir/file_capture.cc.o


src/file_api/CMakeFiles/file_api.dir/file_cache.cc.o: src/file_api/CMakeFiles/file_api.dir/flags.make
src/file_api/CMakeFiles/file_api.dir/file_cache.cc.o: ../src/file_api/file_cache.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/file_api/CMakeFiles/file_api.dir/file_cache.cc.o"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/file_api.dir/file_cache.cc.o -c /home/vagrant/snort3/src/file_api/file_cache.cc

src/file_api/CMakeFiles/file_api.dir/file_cache.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_api.dir/file_cache.cc.i"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/file_api/file_cache.cc > CMakeFiles/file_api.dir/file_cache.cc.i

src/file_api/CMakeFiles/file_api.dir/file_cache.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_api.dir/file_cache.cc.s"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/file_api/file_cache.cc -o CMakeFiles/file_api.dir/file_cache.cc.s

src/file_api/CMakeFiles/file_api.dir/file_cache.cc.o.requires:

.PHONY : src/file_api/CMakeFiles/file_api.dir/file_cache.cc.o.requires

src/file_api/CMakeFiles/file_api.dir/file_cache.cc.o.provides: src/file_api/CMakeFiles/file_api.dir/file_cache.cc.o.requires
	$(MAKE) -f src/file_api/CMakeFiles/file_api.dir/build.make src/file_api/CMakeFiles/file_api.dir/file_cache.cc.o.provides.build
.PHONY : src/file_api/CMakeFiles/file_api.dir/file_cache.cc.o.provides

src/file_api/CMakeFiles/file_api.dir/file_cache.cc.o.provides.build: src/file_api/CMakeFiles/file_api.dir/file_cache.cc.o


src/file_api/CMakeFiles/file_api.dir/file_config.cc.o: src/file_api/CMakeFiles/file_api.dir/flags.make
src/file_api/CMakeFiles/file_api.dir/file_config.cc.o: ../src/file_api/file_config.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/file_api/CMakeFiles/file_api.dir/file_config.cc.o"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/file_api.dir/file_config.cc.o -c /home/vagrant/snort3/src/file_api/file_config.cc

src/file_api/CMakeFiles/file_api.dir/file_config.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_api.dir/file_config.cc.i"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/file_api/file_config.cc > CMakeFiles/file_api.dir/file_config.cc.i

src/file_api/CMakeFiles/file_api.dir/file_config.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_api.dir/file_config.cc.s"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/file_api/file_config.cc -o CMakeFiles/file_api.dir/file_config.cc.s

src/file_api/CMakeFiles/file_api.dir/file_config.cc.o.requires:

.PHONY : src/file_api/CMakeFiles/file_api.dir/file_config.cc.o.requires

src/file_api/CMakeFiles/file_api.dir/file_config.cc.o.provides: src/file_api/CMakeFiles/file_api.dir/file_config.cc.o.requires
	$(MAKE) -f src/file_api/CMakeFiles/file_api.dir/build.make src/file_api/CMakeFiles/file_api.dir/file_config.cc.o.provides.build
.PHONY : src/file_api/CMakeFiles/file_api.dir/file_config.cc.o.provides

src/file_api/CMakeFiles/file_api.dir/file_config.cc.o.provides.build: src/file_api/CMakeFiles/file_api.dir/file_config.cc.o


src/file_api/CMakeFiles/file_api.dir/file_flows.cc.o: src/file_api/CMakeFiles/file_api.dir/flags.make
src/file_api/CMakeFiles/file_api.dir/file_flows.cc.o: ../src/file_api/file_flows.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/file_api/CMakeFiles/file_api.dir/file_flows.cc.o"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/file_api.dir/file_flows.cc.o -c /home/vagrant/snort3/src/file_api/file_flows.cc

src/file_api/CMakeFiles/file_api.dir/file_flows.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_api.dir/file_flows.cc.i"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/file_api/file_flows.cc > CMakeFiles/file_api.dir/file_flows.cc.i

src/file_api/CMakeFiles/file_api.dir/file_flows.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_api.dir/file_flows.cc.s"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/file_api/file_flows.cc -o CMakeFiles/file_api.dir/file_flows.cc.s

src/file_api/CMakeFiles/file_api.dir/file_flows.cc.o.requires:

.PHONY : src/file_api/CMakeFiles/file_api.dir/file_flows.cc.o.requires

src/file_api/CMakeFiles/file_api.dir/file_flows.cc.o.provides: src/file_api/CMakeFiles/file_api.dir/file_flows.cc.o.requires
	$(MAKE) -f src/file_api/CMakeFiles/file_api.dir/build.make src/file_api/CMakeFiles/file_api.dir/file_flows.cc.o.provides.build
.PHONY : src/file_api/CMakeFiles/file_api.dir/file_flows.cc.o.provides

src/file_api/CMakeFiles/file_api.dir/file_flows.cc.o.provides.build: src/file_api/CMakeFiles/file_api.dir/file_flows.cc.o


src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.o: src/file_api/CMakeFiles/file_api.dir/flags.make
src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.o: ../src/file_api/file_identifier.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.o"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/file_api.dir/file_identifier.cc.o -c /home/vagrant/snort3/src/file_api/file_identifier.cc

src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_api.dir/file_identifier.cc.i"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/file_api/file_identifier.cc > CMakeFiles/file_api.dir/file_identifier.cc.i

src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_api.dir/file_identifier.cc.s"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/file_api/file_identifier.cc -o CMakeFiles/file_api.dir/file_identifier.cc.s

src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.o.requires:

.PHONY : src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.o.requires

src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.o.provides: src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.o.requires
	$(MAKE) -f src/file_api/CMakeFiles/file_api.dir/build.make src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.o.provides.build
.PHONY : src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.o.provides

src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.o.provides.build: src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.o


src/file_api/CMakeFiles/file_api.dir/file_lib.cc.o: src/file_api/CMakeFiles/file_api.dir/flags.make
src/file_api/CMakeFiles/file_api.dir/file_lib.cc.o: ../src/file_api/file_lib.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/file_api/CMakeFiles/file_api.dir/file_lib.cc.o"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/file_api.dir/file_lib.cc.o -c /home/vagrant/snort3/src/file_api/file_lib.cc

src/file_api/CMakeFiles/file_api.dir/file_lib.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_api.dir/file_lib.cc.i"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/file_api/file_lib.cc > CMakeFiles/file_api.dir/file_lib.cc.i

src/file_api/CMakeFiles/file_api.dir/file_lib.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_api.dir/file_lib.cc.s"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/file_api/file_lib.cc -o CMakeFiles/file_api.dir/file_lib.cc.s

src/file_api/CMakeFiles/file_api.dir/file_lib.cc.o.requires:

.PHONY : src/file_api/CMakeFiles/file_api.dir/file_lib.cc.o.requires

src/file_api/CMakeFiles/file_api.dir/file_lib.cc.o.provides: src/file_api/CMakeFiles/file_api.dir/file_lib.cc.o.requires
	$(MAKE) -f src/file_api/CMakeFiles/file_api.dir/build.make src/file_api/CMakeFiles/file_api.dir/file_lib.cc.o.provides.build
.PHONY : src/file_api/CMakeFiles/file_api.dir/file_lib.cc.o.provides

src/file_api/CMakeFiles/file_api.dir/file_lib.cc.o.provides.build: src/file_api/CMakeFiles/file_api.dir/file_lib.cc.o


src/file_api/CMakeFiles/file_api.dir/file_log.cc.o: src/file_api/CMakeFiles/file_api.dir/flags.make
src/file_api/CMakeFiles/file_api.dir/file_log.cc.o: ../src/file_api/file_log.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/file_api/CMakeFiles/file_api.dir/file_log.cc.o"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/file_api.dir/file_log.cc.o -c /home/vagrant/snort3/src/file_api/file_log.cc

src/file_api/CMakeFiles/file_api.dir/file_log.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_api.dir/file_log.cc.i"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/file_api/file_log.cc > CMakeFiles/file_api.dir/file_log.cc.i

src/file_api/CMakeFiles/file_api.dir/file_log.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_api.dir/file_log.cc.s"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/file_api/file_log.cc -o CMakeFiles/file_api.dir/file_log.cc.s

src/file_api/CMakeFiles/file_api.dir/file_log.cc.o.requires:

.PHONY : src/file_api/CMakeFiles/file_api.dir/file_log.cc.o.requires

src/file_api/CMakeFiles/file_api.dir/file_log.cc.o.provides: src/file_api/CMakeFiles/file_api.dir/file_log.cc.o.requires
	$(MAKE) -f src/file_api/CMakeFiles/file_api.dir/build.make src/file_api/CMakeFiles/file_api.dir/file_log.cc.o.provides.build
.PHONY : src/file_api/CMakeFiles/file_api.dir/file_log.cc.o.provides

src/file_api/CMakeFiles/file_api.dir/file_log.cc.o.provides.build: src/file_api/CMakeFiles/file_api.dir/file_log.cc.o


src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.o: src/file_api/CMakeFiles/file_api.dir/flags.make
src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.o: ../src/file_api/file_mempool.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.o"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/file_api.dir/file_mempool.cc.o -c /home/vagrant/snort3/src/file_api/file_mempool.cc

src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_api.dir/file_mempool.cc.i"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/file_api/file_mempool.cc > CMakeFiles/file_api.dir/file_mempool.cc.i

src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_api.dir/file_mempool.cc.s"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/file_api/file_mempool.cc -o CMakeFiles/file_api.dir/file_mempool.cc.s

src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.o.requires:

.PHONY : src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.o.requires

src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.o.provides: src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.o.requires
	$(MAKE) -f src/file_api/CMakeFiles/file_api.dir/build.make src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.o.provides.build
.PHONY : src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.o.provides

src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.o.provides.build: src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.o


src/file_api/CMakeFiles/file_api.dir/file_module.cc.o: src/file_api/CMakeFiles/file_api.dir/flags.make
src/file_api/CMakeFiles/file_api.dir/file_module.cc.o: ../src/file_api/file_module.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/file_api/CMakeFiles/file_api.dir/file_module.cc.o"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/file_api.dir/file_module.cc.o -c /home/vagrant/snort3/src/file_api/file_module.cc

src/file_api/CMakeFiles/file_api.dir/file_module.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_api.dir/file_module.cc.i"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/file_api/file_module.cc > CMakeFiles/file_api.dir/file_module.cc.i

src/file_api/CMakeFiles/file_api.dir/file_module.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_api.dir/file_module.cc.s"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/file_api/file_module.cc -o CMakeFiles/file_api.dir/file_module.cc.s

src/file_api/CMakeFiles/file_api.dir/file_module.cc.o.requires:

.PHONY : src/file_api/CMakeFiles/file_api.dir/file_module.cc.o.requires

src/file_api/CMakeFiles/file_api.dir/file_module.cc.o.provides: src/file_api/CMakeFiles/file_api.dir/file_module.cc.o.requires
	$(MAKE) -f src/file_api/CMakeFiles/file_api.dir/build.make src/file_api/CMakeFiles/file_api.dir/file_module.cc.o.provides.build
.PHONY : src/file_api/CMakeFiles/file_api.dir/file_module.cc.o.provides

src/file_api/CMakeFiles/file_api.dir/file_module.cc.o.provides.build: src/file_api/CMakeFiles/file_api.dir/file_module.cc.o


src/file_api/CMakeFiles/file_api.dir/file_policy.cc.o: src/file_api/CMakeFiles/file_api.dir/flags.make
src/file_api/CMakeFiles/file_api.dir/file_policy.cc.o: ../src/file_api/file_policy.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/file_api/CMakeFiles/file_api.dir/file_policy.cc.o"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/file_api.dir/file_policy.cc.o -c /home/vagrant/snort3/src/file_api/file_policy.cc

src/file_api/CMakeFiles/file_api.dir/file_policy.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_api.dir/file_policy.cc.i"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/file_api/file_policy.cc > CMakeFiles/file_api.dir/file_policy.cc.i

src/file_api/CMakeFiles/file_api.dir/file_policy.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_api.dir/file_policy.cc.s"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/file_api/file_policy.cc -o CMakeFiles/file_api.dir/file_policy.cc.s

src/file_api/CMakeFiles/file_api.dir/file_policy.cc.o.requires:

.PHONY : src/file_api/CMakeFiles/file_api.dir/file_policy.cc.o.requires

src/file_api/CMakeFiles/file_api.dir/file_policy.cc.o.provides: src/file_api/CMakeFiles/file_api.dir/file_policy.cc.o.requires
	$(MAKE) -f src/file_api/CMakeFiles/file_api.dir/build.make src/file_api/CMakeFiles/file_api.dir/file_policy.cc.o.provides.build
.PHONY : src/file_api/CMakeFiles/file_api.dir/file_policy.cc.o.provides

src/file_api/CMakeFiles/file_api.dir/file_policy.cc.o.provides.build: src/file_api/CMakeFiles/file_api.dir/file_policy.cc.o


src/file_api/CMakeFiles/file_api.dir/file_segment.cc.o: src/file_api/CMakeFiles/file_api.dir/flags.make
src/file_api/CMakeFiles/file_api.dir/file_segment.cc.o: ../src/file_api/file_segment.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/file_api/CMakeFiles/file_api.dir/file_segment.cc.o"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/file_api.dir/file_segment.cc.o -c /home/vagrant/snort3/src/file_api/file_segment.cc

src/file_api/CMakeFiles/file_api.dir/file_segment.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_api.dir/file_segment.cc.i"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/file_api/file_segment.cc > CMakeFiles/file_api.dir/file_segment.cc.i

src/file_api/CMakeFiles/file_api.dir/file_segment.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_api.dir/file_segment.cc.s"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/file_api/file_segment.cc -o CMakeFiles/file_api.dir/file_segment.cc.s

src/file_api/CMakeFiles/file_api.dir/file_segment.cc.o.requires:

.PHONY : src/file_api/CMakeFiles/file_api.dir/file_segment.cc.o.requires

src/file_api/CMakeFiles/file_api.dir/file_segment.cc.o.provides: src/file_api/CMakeFiles/file_api.dir/file_segment.cc.o.requires
	$(MAKE) -f src/file_api/CMakeFiles/file_api.dir/build.make src/file_api/CMakeFiles/file_api.dir/file_segment.cc.o.provides.build
.PHONY : src/file_api/CMakeFiles/file_api.dir/file_segment.cc.o.provides

src/file_api/CMakeFiles/file_api.dir/file_segment.cc.o.provides.build: src/file_api/CMakeFiles/file_api.dir/file_segment.cc.o


src/file_api/CMakeFiles/file_api.dir/file_service.cc.o: src/file_api/CMakeFiles/file_api.dir/flags.make
src/file_api/CMakeFiles/file_api.dir/file_service.cc.o: ../src/file_api/file_service.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/file_api/CMakeFiles/file_api.dir/file_service.cc.o"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/file_api.dir/file_service.cc.o -c /home/vagrant/snort3/src/file_api/file_service.cc

src/file_api/CMakeFiles/file_api.dir/file_service.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_api.dir/file_service.cc.i"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/file_api/file_service.cc > CMakeFiles/file_api.dir/file_service.cc.i

src/file_api/CMakeFiles/file_api.dir/file_service.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_api.dir/file_service.cc.s"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/file_api/file_service.cc -o CMakeFiles/file_api.dir/file_service.cc.s

src/file_api/CMakeFiles/file_api.dir/file_service.cc.o.requires:

.PHONY : src/file_api/CMakeFiles/file_api.dir/file_service.cc.o.requires

src/file_api/CMakeFiles/file_api.dir/file_service.cc.o.provides: src/file_api/CMakeFiles/file_api.dir/file_service.cc.o.requires
	$(MAKE) -f src/file_api/CMakeFiles/file_api.dir/build.make src/file_api/CMakeFiles/file_api.dir/file_service.cc.o.provides.build
.PHONY : src/file_api/CMakeFiles/file_api.dir/file_service.cc.o.provides

src/file_api/CMakeFiles/file_api.dir/file_service.cc.o.provides.build: src/file_api/CMakeFiles/file_api.dir/file_service.cc.o


src/file_api/CMakeFiles/file_api.dir/file_stats.cc.o: src/file_api/CMakeFiles/file_api.dir/flags.make
src/file_api/CMakeFiles/file_api.dir/file_stats.cc.o: ../src/file_api/file_stats.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object src/file_api/CMakeFiles/file_api.dir/file_stats.cc.o"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/file_api.dir/file_stats.cc.o -c /home/vagrant/snort3/src/file_api/file_stats.cc

src/file_api/CMakeFiles/file_api.dir/file_stats.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/file_api.dir/file_stats.cc.i"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/file_api/file_stats.cc > CMakeFiles/file_api.dir/file_stats.cc.i

src/file_api/CMakeFiles/file_api.dir/file_stats.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/file_api.dir/file_stats.cc.s"
	cd /home/vagrant/snort3/build/src/file_api && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/file_api/file_stats.cc -o CMakeFiles/file_api.dir/file_stats.cc.s

src/file_api/CMakeFiles/file_api.dir/file_stats.cc.o.requires:

.PHONY : src/file_api/CMakeFiles/file_api.dir/file_stats.cc.o.requires

src/file_api/CMakeFiles/file_api.dir/file_stats.cc.o.provides: src/file_api/CMakeFiles/file_api.dir/file_stats.cc.o.requires
	$(MAKE) -f src/file_api/CMakeFiles/file_api.dir/build.make src/file_api/CMakeFiles/file_api.dir/file_stats.cc.o.provides.build
.PHONY : src/file_api/CMakeFiles/file_api.dir/file_stats.cc.o.provides

src/file_api/CMakeFiles/file_api.dir/file_stats.cc.o.provides.build: src/file_api/CMakeFiles/file_api.dir/file_stats.cc.o


file_api: src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.o
file_api: src/file_api/CMakeFiles/file_api.dir/file_capture.cc.o
file_api: src/file_api/CMakeFiles/file_api.dir/file_cache.cc.o
file_api: src/file_api/CMakeFiles/file_api.dir/file_config.cc.o
file_api: src/file_api/CMakeFiles/file_api.dir/file_flows.cc.o
file_api: src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.o
file_api: src/file_api/CMakeFiles/file_api.dir/file_lib.cc.o
file_api: src/file_api/CMakeFiles/file_api.dir/file_log.cc.o
file_api: src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.o
file_api: src/file_api/CMakeFiles/file_api.dir/file_module.cc.o
file_api: src/file_api/CMakeFiles/file_api.dir/file_policy.cc.o
file_api: src/file_api/CMakeFiles/file_api.dir/file_segment.cc.o
file_api: src/file_api/CMakeFiles/file_api.dir/file_service.cc.o
file_api: src/file_api/CMakeFiles/file_api.dir/file_stats.cc.o
file_api: src/file_api/CMakeFiles/file_api.dir/build.make

.PHONY : file_api

# Rule to build all files generated by this target.
src/file_api/CMakeFiles/file_api.dir/build: file_api

.PHONY : src/file_api/CMakeFiles/file_api.dir/build

src/file_api/CMakeFiles/file_api.dir/requires: src/file_api/CMakeFiles/file_api.dir/circular_buffer.cc.o.requires
src/file_api/CMakeFiles/file_api.dir/requires: src/file_api/CMakeFiles/file_api.dir/file_capture.cc.o.requires
src/file_api/CMakeFiles/file_api.dir/requires: src/file_api/CMakeFiles/file_api.dir/file_cache.cc.o.requires
src/file_api/CMakeFiles/file_api.dir/requires: src/file_api/CMakeFiles/file_api.dir/file_config.cc.o.requires
src/file_api/CMakeFiles/file_api.dir/requires: src/file_api/CMakeFiles/file_api.dir/file_flows.cc.o.requires
src/file_api/CMakeFiles/file_api.dir/requires: src/file_api/CMakeFiles/file_api.dir/file_identifier.cc.o.requires
src/file_api/CMakeFiles/file_api.dir/requires: src/file_api/CMakeFiles/file_api.dir/file_lib.cc.o.requires
src/file_api/CMakeFiles/file_api.dir/requires: src/file_api/CMakeFiles/file_api.dir/file_log.cc.o.requires
src/file_api/CMakeFiles/file_api.dir/requires: src/file_api/CMakeFiles/file_api.dir/file_mempool.cc.o.requires
src/file_api/CMakeFiles/file_api.dir/requires: src/file_api/CMakeFiles/file_api.dir/file_module.cc.o.requires
src/file_api/CMakeFiles/file_api.dir/requires: src/file_api/CMakeFiles/file_api.dir/file_policy.cc.o.requires
src/file_api/CMakeFiles/file_api.dir/requires: src/file_api/CMakeFiles/file_api.dir/file_segment.cc.o.requires
src/file_api/CMakeFiles/file_api.dir/requires: src/file_api/CMakeFiles/file_api.dir/file_service.cc.o.requires
src/file_api/CMakeFiles/file_api.dir/requires: src/file_api/CMakeFiles/file_api.dir/file_stats.cc.o.requires

.PHONY : src/file_api/CMakeFiles/file_api.dir/requires

src/file_api/CMakeFiles/file_api.dir/clean:
	cd /home/vagrant/snort3/build/src/file_api && $(CMAKE_COMMAND) -P CMakeFiles/file_api.dir/cmake_clean.cmake
.PHONY : src/file_api/CMakeFiles/file_api.dir/clean

src/file_api/CMakeFiles/file_api.dir/depend:
	cd /home/vagrant/snort3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vagrant/snort3 /home/vagrant/snort3/src/file_api /home/vagrant/snort3/build /home/vagrant/snort3/build/src/file_api /home/vagrant/snort3/build/src/file_api/CMakeFiles/file_api.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/file_api/CMakeFiles/file_api.dir/depend

