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
include src/parser/CMakeFiles/parser.dir/depend.make

# Include the progress variables for this target.
include src/parser/CMakeFiles/parser.dir/progress.make

# Include the compile flags for this target's objects.
include src/parser/CMakeFiles/parser.dir/flags.make

src/parser/CMakeFiles/parser.dir/arg_list.cc.o: src/parser/CMakeFiles/parser.dir/flags.make
src/parser/CMakeFiles/parser.dir/arg_list.cc.o: ../src/parser/arg_list.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/parser/CMakeFiles/parser.dir/arg_list.cc.o"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/arg_list.cc.o -c /home/vagrant/snort3/src/parser/arg_list.cc

src/parser/CMakeFiles/parser.dir/arg_list.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/arg_list.cc.i"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/parser/arg_list.cc > CMakeFiles/parser.dir/arg_list.cc.i

src/parser/CMakeFiles/parser.dir/arg_list.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/arg_list.cc.s"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/parser/arg_list.cc -o CMakeFiles/parser.dir/arg_list.cc.s

src/parser/CMakeFiles/parser.dir/arg_list.cc.o.requires:

.PHONY : src/parser/CMakeFiles/parser.dir/arg_list.cc.o.requires

src/parser/CMakeFiles/parser.dir/arg_list.cc.o.provides: src/parser/CMakeFiles/parser.dir/arg_list.cc.o.requires
	$(MAKE) -f src/parser/CMakeFiles/parser.dir/build.make src/parser/CMakeFiles/parser.dir/arg_list.cc.o.provides.build
.PHONY : src/parser/CMakeFiles/parser.dir/arg_list.cc.o.provides

src/parser/CMakeFiles/parser.dir/arg_list.cc.o.provides.build: src/parser/CMakeFiles/parser.dir/arg_list.cc.o


src/parser/CMakeFiles/parser.dir/parser.cc.o: src/parser/CMakeFiles/parser.dir/flags.make
src/parser/CMakeFiles/parser.dir/parser.cc.o: ../src/parser/parser.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/parser/CMakeFiles/parser.dir/parser.cc.o"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/parser.cc.o -c /home/vagrant/snort3/src/parser/parser.cc

src/parser/CMakeFiles/parser.dir/parser.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/parser.cc.i"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/parser/parser.cc > CMakeFiles/parser.dir/parser.cc.i

src/parser/CMakeFiles/parser.dir/parser.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/parser.cc.s"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/parser/parser.cc -o CMakeFiles/parser.dir/parser.cc.s

src/parser/CMakeFiles/parser.dir/parser.cc.o.requires:

.PHONY : src/parser/CMakeFiles/parser.dir/parser.cc.o.requires

src/parser/CMakeFiles/parser.dir/parser.cc.o.provides: src/parser/CMakeFiles/parser.dir/parser.cc.o.requires
	$(MAKE) -f src/parser/CMakeFiles/parser.dir/build.make src/parser/CMakeFiles/parser.dir/parser.cc.o.provides.build
.PHONY : src/parser/CMakeFiles/parser.dir/parser.cc.o.provides

src/parser/CMakeFiles/parser.dir/parser.cc.o.provides.build: src/parser/CMakeFiles/parser.dir/parser.cc.o


src/parser/CMakeFiles/parser.dir/parse_conf.cc.o: src/parser/CMakeFiles/parser.dir/flags.make
src/parser/CMakeFiles/parser.dir/parse_conf.cc.o: ../src/parser/parse_conf.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/parser/CMakeFiles/parser.dir/parse_conf.cc.o"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/parse_conf.cc.o -c /home/vagrant/snort3/src/parser/parse_conf.cc

src/parser/CMakeFiles/parser.dir/parse_conf.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/parse_conf.cc.i"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/parser/parse_conf.cc > CMakeFiles/parser.dir/parse_conf.cc.i

src/parser/CMakeFiles/parser.dir/parse_conf.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/parse_conf.cc.s"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/parser/parse_conf.cc -o CMakeFiles/parser.dir/parse_conf.cc.s

src/parser/CMakeFiles/parser.dir/parse_conf.cc.o.requires:

.PHONY : src/parser/CMakeFiles/parser.dir/parse_conf.cc.o.requires

src/parser/CMakeFiles/parser.dir/parse_conf.cc.o.provides: src/parser/CMakeFiles/parser.dir/parse_conf.cc.o.requires
	$(MAKE) -f src/parser/CMakeFiles/parser.dir/build.make src/parser/CMakeFiles/parser.dir/parse_conf.cc.o.provides.build
.PHONY : src/parser/CMakeFiles/parser.dir/parse_conf.cc.o.provides

src/parser/CMakeFiles/parser.dir/parse_conf.cc.o.provides.build: src/parser/CMakeFiles/parser.dir/parse_conf.cc.o


src/parser/CMakeFiles/parser.dir/parse_ip.cc.o: src/parser/CMakeFiles/parser.dir/flags.make
src/parser/CMakeFiles/parser.dir/parse_ip.cc.o: ../src/parser/parse_ip.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/parser/CMakeFiles/parser.dir/parse_ip.cc.o"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/parse_ip.cc.o -c /home/vagrant/snort3/src/parser/parse_ip.cc

src/parser/CMakeFiles/parser.dir/parse_ip.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/parse_ip.cc.i"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/parser/parse_ip.cc > CMakeFiles/parser.dir/parse_ip.cc.i

src/parser/CMakeFiles/parser.dir/parse_ip.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/parse_ip.cc.s"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/parser/parse_ip.cc -o CMakeFiles/parser.dir/parse_ip.cc.s

src/parser/CMakeFiles/parser.dir/parse_ip.cc.o.requires:

.PHONY : src/parser/CMakeFiles/parser.dir/parse_ip.cc.o.requires

src/parser/CMakeFiles/parser.dir/parse_ip.cc.o.provides: src/parser/CMakeFiles/parser.dir/parse_ip.cc.o.requires
	$(MAKE) -f src/parser/CMakeFiles/parser.dir/build.make src/parser/CMakeFiles/parser.dir/parse_ip.cc.o.provides.build
.PHONY : src/parser/CMakeFiles/parser.dir/parse_ip.cc.o.provides

src/parser/CMakeFiles/parser.dir/parse_ip.cc.o.provides.build: src/parser/CMakeFiles/parser.dir/parse_ip.cc.o


src/parser/CMakeFiles/parser.dir/parse_ports.cc.o: src/parser/CMakeFiles/parser.dir/flags.make
src/parser/CMakeFiles/parser.dir/parse_ports.cc.o: ../src/parser/parse_ports.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/parser/CMakeFiles/parser.dir/parse_ports.cc.o"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/parse_ports.cc.o -c /home/vagrant/snort3/src/parser/parse_ports.cc

src/parser/CMakeFiles/parser.dir/parse_ports.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/parse_ports.cc.i"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/parser/parse_ports.cc > CMakeFiles/parser.dir/parse_ports.cc.i

src/parser/CMakeFiles/parser.dir/parse_ports.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/parse_ports.cc.s"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/parser/parse_ports.cc -o CMakeFiles/parser.dir/parse_ports.cc.s

src/parser/CMakeFiles/parser.dir/parse_ports.cc.o.requires:

.PHONY : src/parser/CMakeFiles/parser.dir/parse_ports.cc.o.requires

src/parser/CMakeFiles/parser.dir/parse_ports.cc.o.provides: src/parser/CMakeFiles/parser.dir/parse_ports.cc.o.requires
	$(MAKE) -f src/parser/CMakeFiles/parser.dir/build.make src/parser/CMakeFiles/parser.dir/parse_ports.cc.o.provides.build
.PHONY : src/parser/CMakeFiles/parser.dir/parse_ports.cc.o.provides

src/parser/CMakeFiles/parser.dir/parse_ports.cc.o.provides.build: src/parser/CMakeFiles/parser.dir/parse_ports.cc.o


src/parser/CMakeFiles/parser.dir/parse_rule.cc.o: src/parser/CMakeFiles/parser.dir/flags.make
src/parser/CMakeFiles/parser.dir/parse_rule.cc.o: ../src/parser/parse_rule.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/parser/CMakeFiles/parser.dir/parse_rule.cc.o"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/parse_rule.cc.o -c /home/vagrant/snort3/src/parser/parse_rule.cc

src/parser/CMakeFiles/parser.dir/parse_rule.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/parse_rule.cc.i"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/parser/parse_rule.cc > CMakeFiles/parser.dir/parse_rule.cc.i

src/parser/CMakeFiles/parser.dir/parse_rule.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/parse_rule.cc.s"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/parser/parse_rule.cc -o CMakeFiles/parser.dir/parse_rule.cc.s

src/parser/CMakeFiles/parser.dir/parse_rule.cc.o.requires:

.PHONY : src/parser/CMakeFiles/parser.dir/parse_rule.cc.o.requires

src/parser/CMakeFiles/parser.dir/parse_rule.cc.o.provides: src/parser/CMakeFiles/parser.dir/parse_rule.cc.o.requires
	$(MAKE) -f src/parser/CMakeFiles/parser.dir/build.make src/parser/CMakeFiles/parser.dir/parse_rule.cc.o.provides.build
.PHONY : src/parser/CMakeFiles/parser.dir/parse_rule.cc.o.provides

src/parser/CMakeFiles/parser.dir/parse_rule.cc.o.provides.build: src/parser/CMakeFiles/parser.dir/parse_rule.cc.o


src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.o: src/parser/CMakeFiles/parser.dir/flags.make
src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.o: ../src/parser/parse_so_rule.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.o"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/parse_so_rule.cc.o -c /home/vagrant/snort3/src/parser/parse_so_rule.cc

src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/parse_so_rule.cc.i"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/parser/parse_so_rule.cc > CMakeFiles/parser.dir/parse_so_rule.cc.i

src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/parse_so_rule.cc.s"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/parser/parse_so_rule.cc -o CMakeFiles/parser.dir/parse_so_rule.cc.s

src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.o.requires:

.PHONY : src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.o.requires

src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.o.provides: src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.o.requires
	$(MAKE) -f src/parser/CMakeFiles/parser.dir/build.make src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.o.provides.build
.PHONY : src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.o.provides

src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.o.provides.build: src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.o


src/parser/CMakeFiles/parser.dir/parse_stream.cc.o: src/parser/CMakeFiles/parser.dir/flags.make
src/parser/CMakeFiles/parser.dir/parse_stream.cc.o: ../src/parser/parse_stream.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/parser/CMakeFiles/parser.dir/parse_stream.cc.o"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/parse_stream.cc.o -c /home/vagrant/snort3/src/parser/parse_stream.cc

src/parser/CMakeFiles/parser.dir/parse_stream.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/parse_stream.cc.i"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/parser/parse_stream.cc > CMakeFiles/parser.dir/parse_stream.cc.i

src/parser/CMakeFiles/parser.dir/parse_stream.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/parse_stream.cc.s"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/parser/parse_stream.cc -o CMakeFiles/parser.dir/parse_stream.cc.s

src/parser/CMakeFiles/parser.dir/parse_stream.cc.o.requires:

.PHONY : src/parser/CMakeFiles/parser.dir/parse_stream.cc.o.requires

src/parser/CMakeFiles/parser.dir/parse_stream.cc.o.provides: src/parser/CMakeFiles/parser.dir/parse_stream.cc.o.requires
	$(MAKE) -f src/parser/CMakeFiles/parser.dir/build.make src/parser/CMakeFiles/parser.dir/parse_stream.cc.o.provides.build
.PHONY : src/parser/CMakeFiles/parser.dir/parse_stream.cc.o.provides

src/parser/CMakeFiles/parser.dir/parse_stream.cc.o.provides.build: src/parser/CMakeFiles/parser.dir/parse_stream.cc.o


src/parser/CMakeFiles/parser.dir/parse_utils.cc.o: src/parser/CMakeFiles/parser.dir/flags.make
src/parser/CMakeFiles/parser.dir/parse_utils.cc.o: ../src/parser/parse_utils.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/parser/CMakeFiles/parser.dir/parse_utils.cc.o"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/parse_utils.cc.o -c /home/vagrant/snort3/src/parser/parse_utils.cc

src/parser/CMakeFiles/parser.dir/parse_utils.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/parse_utils.cc.i"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/parser/parse_utils.cc > CMakeFiles/parser.dir/parse_utils.cc.i

src/parser/CMakeFiles/parser.dir/parse_utils.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/parse_utils.cc.s"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/parser/parse_utils.cc -o CMakeFiles/parser.dir/parse_utils.cc.s

src/parser/CMakeFiles/parser.dir/parse_utils.cc.o.requires:

.PHONY : src/parser/CMakeFiles/parser.dir/parse_utils.cc.o.requires

src/parser/CMakeFiles/parser.dir/parse_utils.cc.o.provides: src/parser/CMakeFiles/parser.dir/parse_utils.cc.o.requires
	$(MAKE) -f src/parser/CMakeFiles/parser.dir/build.make src/parser/CMakeFiles/parser.dir/parse_utils.cc.o.provides.build
.PHONY : src/parser/CMakeFiles/parser.dir/parse_utils.cc.o.provides

src/parser/CMakeFiles/parser.dir/parse_utils.cc.o.provides.build: src/parser/CMakeFiles/parser.dir/parse_utils.cc.o


src/parser/CMakeFiles/parser.dir/cmd_line.cc.o: src/parser/CMakeFiles/parser.dir/flags.make
src/parser/CMakeFiles/parser.dir/cmd_line.cc.o: ../src/parser/cmd_line.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/parser/CMakeFiles/parser.dir/cmd_line.cc.o"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/cmd_line.cc.o -c /home/vagrant/snort3/src/parser/cmd_line.cc

src/parser/CMakeFiles/parser.dir/cmd_line.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/cmd_line.cc.i"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/parser/cmd_line.cc > CMakeFiles/parser.dir/cmd_line.cc.i

src/parser/CMakeFiles/parser.dir/cmd_line.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/cmd_line.cc.s"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/parser/cmd_line.cc -o CMakeFiles/parser.dir/cmd_line.cc.s

src/parser/CMakeFiles/parser.dir/cmd_line.cc.o.requires:

.PHONY : src/parser/CMakeFiles/parser.dir/cmd_line.cc.o.requires

src/parser/CMakeFiles/parser.dir/cmd_line.cc.o.provides: src/parser/CMakeFiles/parser.dir/cmd_line.cc.o.requires
	$(MAKE) -f src/parser/CMakeFiles/parser.dir/build.make src/parser/CMakeFiles/parser.dir/cmd_line.cc.o.provides.build
.PHONY : src/parser/CMakeFiles/parser.dir/cmd_line.cc.o.provides

src/parser/CMakeFiles/parser.dir/cmd_line.cc.o.provides.build: src/parser/CMakeFiles/parser.dir/cmd_line.cc.o


src/parser/CMakeFiles/parser.dir/config_file.cc.o: src/parser/CMakeFiles/parser.dir/flags.make
src/parser/CMakeFiles/parser.dir/config_file.cc.o: ../src/parser/config_file.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/parser/CMakeFiles/parser.dir/config_file.cc.o"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/config_file.cc.o -c /home/vagrant/snort3/src/parser/config_file.cc

src/parser/CMakeFiles/parser.dir/config_file.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/config_file.cc.i"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/parser/config_file.cc > CMakeFiles/parser.dir/config_file.cc.i

src/parser/CMakeFiles/parser.dir/config_file.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/config_file.cc.s"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/parser/config_file.cc -o CMakeFiles/parser.dir/config_file.cc.s

src/parser/CMakeFiles/parser.dir/config_file.cc.o.requires:

.PHONY : src/parser/CMakeFiles/parser.dir/config_file.cc.o.requires

src/parser/CMakeFiles/parser.dir/config_file.cc.o.provides: src/parser/CMakeFiles/parser.dir/config_file.cc.o.requires
	$(MAKE) -f src/parser/CMakeFiles/parser.dir/build.make src/parser/CMakeFiles/parser.dir/config_file.cc.o.provides.build
.PHONY : src/parser/CMakeFiles/parser.dir/config_file.cc.o.provides

src/parser/CMakeFiles/parser.dir/config_file.cc.o.provides.build: src/parser/CMakeFiles/parser.dir/config_file.cc.o


src/parser/CMakeFiles/parser.dir/vars.cc.o: src/parser/CMakeFiles/parser.dir/flags.make
src/parser/CMakeFiles/parser.dir/vars.cc.o: ../src/parser/vars.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vagrant/snort3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/parser/CMakeFiles/parser.dir/vars.cc.o"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/parser.dir/vars.cc.o -c /home/vagrant/snort3/src/parser/vars.cc

src/parser/CMakeFiles/parser.dir/vars.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/parser.dir/vars.cc.i"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vagrant/snort3/src/parser/vars.cc > CMakeFiles/parser.dir/vars.cc.i

src/parser/CMakeFiles/parser.dir/vars.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/parser.dir/vars.cc.s"
	cd /home/vagrant/snort3/build/src/parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vagrant/snort3/src/parser/vars.cc -o CMakeFiles/parser.dir/vars.cc.s

src/parser/CMakeFiles/parser.dir/vars.cc.o.requires:

.PHONY : src/parser/CMakeFiles/parser.dir/vars.cc.o.requires

src/parser/CMakeFiles/parser.dir/vars.cc.o.provides: src/parser/CMakeFiles/parser.dir/vars.cc.o.requires
	$(MAKE) -f src/parser/CMakeFiles/parser.dir/build.make src/parser/CMakeFiles/parser.dir/vars.cc.o.provides.build
.PHONY : src/parser/CMakeFiles/parser.dir/vars.cc.o.provides

src/parser/CMakeFiles/parser.dir/vars.cc.o.provides.build: src/parser/CMakeFiles/parser.dir/vars.cc.o


parser: src/parser/CMakeFiles/parser.dir/arg_list.cc.o
parser: src/parser/CMakeFiles/parser.dir/parser.cc.o
parser: src/parser/CMakeFiles/parser.dir/parse_conf.cc.o
parser: src/parser/CMakeFiles/parser.dir/parse_ip.cc.o
parser: src/parser/CMakeFiles/parser.dir/parse_ports.cc.o
parser: src/parser/CMakeFiles/parser.dir/parse_rule.cc.o
parser: src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.o
parser: src/parser/CMakeFiles/parser.dir/parse_stream.cc.o
parser: src/parser/CMakeFiles/parser.dir/parse_utils.cc.o
parser: src/parser/CMakeFiles/parser.dir/cmd_line.cc.o
parser: src/parser/CMakeFiles/parser.dir/config_file.cc.o
parser: src/parser/CMakeFiles/parser.dir/vars.cc.o
parser: src/parser/CMakeFiles/parser.dir/build.make

.PHONY : parser

# Rule to build all files generated by this target.
src/parser/CMakeFiles/parser.dir/build: parser

.PHONY : src/parser/CMakeFiles/parser.dir/build

src/parser/CMakeFiles/parser.dir/requires: src/parser/CMakeFiles/parser.dir/arg_list.cc.o.requires
src/parser/CMakeFiles/parser.dir/requires: src/parser/CMakeFiles/parser.dir/parser.cc.o.requires
src/parser/CMakeFiles/parser.dir/requires: src/parser/CMakeFiles/parser.dir/parse_conf.cc.o.requires
src/parser/CMakeFiles/parser.dir/requires: src/parser/CMakeFiles/parser.dir/parse_ip.cc.o.requires
src/parser/CMakeFiles/parser.dir/requires: src/parser/CMakeFiles/parser.dir/parse_ports.cc.o.requires
src/parser/CMakeFiles/parser.dir/requires: src/parser/CMakeFiles/parser.dir/parse_rule.cc.o.requires
src/parser/CMakeFiles/parser.dir/requires: src/parser/CMakeFiles/parser.dir/parse_so_rule.cc.o.requires
src/parser/CMakeFiles/parser.dir/requires: src/parser/CMakeFiles/parser.dir/parse_stream.cc.o.requires
src/parser/CMakeFiles/parser.dir/requires: src/parser/CMakeFiles/parser.dir/parse_utils.cc.o.requires
src/parser/CMakeFiles/parser.dir/requires: src/parser/CMakeFiles/parser.dir/cmd_line.cc.o.requires
src/parser/CMakeFiles/parser.dir/requires: src/parser/CMakeFiles/parser.dir/config_file.cc.o.requires
src/parser/CMakeFiles/parser.dir/requires: src/parser/CMakeFiles/parser.dir/vars.cc.o.requires

.PHONY : src/parser/CMakeFiles/parser.dir/requires

src/parser/CMakeFiles/parser.dir/clean:
	cd /home/vagrant/snort3/build/src/parser && $(CMAKE_COMMAND) -P CMakeFiles/parser.dir/cmake_clean.cmake
.PHONY : src/parser/CMakeFiles/parser.dir/clean

src/parser/CMakeFiles/parser.dir/depend:
	cd /home/vagrant/snort3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vagrant/snort3 /home/vagrant/snort3/src/parser /home/vagrant/snort3/build /home/vagrant/snort3/build/src/parser /home/vagrant/snort3/build/src/parser/CMakeFiles/parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/parser/CMakeFiles/parser.dir/depend

