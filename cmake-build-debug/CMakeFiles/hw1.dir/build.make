# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/clion/169/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/169/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/student/CLionProjects/hw1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/student/CLionProjects/hw1/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/hw1.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/hw1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hw1.dir/flags.make

CMakeFiles/hw1.dir/smash.cpp.o: CMakeFiles/hw1.dir/flags.make
CMakeFiles/hw1.dir/smash.cpp.o: ../smash.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/student/CLionProjects/hw1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hw1.dir/smash.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hw1.dir/smash.cpp.o -c /home/student/CLionProjects/hw1/smash.cpp

CMakeFiles/hw1.dir/smash.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw1.dir/smash.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/student/CLionProjects/hw1/smash.cpp > CMakeFiles/hw1.dir/smash.cpp.i

CMakeFiles/hw1.dir/smash.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw1.dir/smash.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/student/CLionProjects/hw1/smash.cpp -o CMakeFiles/hw1.dir/smash.cpp.s

CMakeFiles/hw1.dir/Commands.cpp.o: CMakeFiles/hw1.dir/flags.make
CMakeFiles/hw1.dir/Commands.cpp.o: ../Commands.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/student/CLionProjects/hw1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/hw1.dir/Commands.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hw1.dir/Commands.cpp.o -c /home/student/CLionProjects/hw1/Commands.cpp

CMakeFiles/hw1.dir/Commands.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw1.dir/Commands.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/student/CLionProjects/hw1/Commands.cpp > CMakeFiles/hw1.dir/Commands.cpp.i

CMakeFiles/hw1.dir/Commands.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw1.dir/Commands.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/student/CLionProjects/hw1/Commands.cpp -o CMakeFiles/hw1.dir/Commands.cpp.s

CMakeFiles/hw1.dir/signals.cpp.o: CMakeFiles/hw1.dir/flags.make
CMakeFiles/hw1.dir/signals.cpp.o: ../signals.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/student/CLionProjects/hw1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/hw1.dir/signals.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hw1.dir/signals.cpp.o -c /home/student/CLionProjects/hw1/signals.cpp

CMakeFiles/hw1.dir/signals.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw1.dir/signals.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/student/CLionProjects/hw1/signals.cpp > CMakeFiles/hw1.dir/signals.cpp.i

CMakeFiles/hw1.dir/signals.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw1.dir/signals.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/student/CLionProjects/hw1/signals.cpp -o CMakeFiles/hw1.dir/signals.cpp.s

# Object files for target hw1
hw1_OBJECTS = \
"CMakeFiles/hw1.dir/smash.cpp.o" \
"CMakeFiles/hw1.dir/Commands.cpp.o" \
"CMakeFiles/hw1.dir/signals.cpp.o"

# External object files for target hw1
hw1_EXTERNAL_OBJECTS =

hw1: CMakeFiles/hw1.dir/smash.cpp.o
hw1: CMakeFiles/hw1.dir/Commands.cpp.o
hw1: CMakeFiles/hw1.dir/signals.cpp.o
hw1: CMakeFiles/hw1.dir/build.make
hw1: CMakeFiles/hw1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/student/CLionProjects/hw1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable hw1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hw1.dir/build: hw1
.PHONY : CMakeFiles/hw1.dir/build

CMakeFiles/hw1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hw1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hw1.dir/clean

CMakeFiles/hw1.dir/depend:
	cd /home/student/CLionProjects/hw1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/student/CLionProjects/hw1 /home/student/CLionProjects/hw1 /home/student/CLionProjects/hw1/cmake-build-debug /home/student/CLionProjects/hw1/cmake-build-debug /home/student/CLionProjects/hw1/cmake-build-debug/CMakeFiles/hw1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hw1.dir/depend

