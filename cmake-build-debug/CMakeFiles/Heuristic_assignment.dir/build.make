# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /opt/clion-2018.2.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2018.2.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/oaugusto/Workspace/Heuristic-assignment

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/oaugusto/Workspace/Heuristic-assignment/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Heuristic_assignment.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Heuristic_assignment.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Heuristic_assignment.dir/flags.make

CMakeFiles/Heuristic_assignment.dir/src/Graph.cpp.o: CMakeFiles/Heuristic_assignment.dir/flags.make
CMakeFiles/Heuristic_assignment.dir/src/Graph.cpp.o: ../src/Graph.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oaugusto/Workspace/Heuristic-assignment/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Heuristic_assignment.dir/src/Graph.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Heuristic_assignment.dir/src/Graph.cpp.o -c /home/oaugusto/Workspace/Heuristic-assignment/src/Graph.cpp

CMakeFiles/Heuristic_assignment.dir/src/Graph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Heuristic_assignment.dir/src/Graph.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oaugusto/Workspace/Heuristic-assignment/src/Graph.cpp > CMakeFiles/Heuristic_assignment.dir/src/Graph.cpp.i

CMakeFiles/Heuristic_assignment.dir/src/Graph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Heuristic_assignment.dir/src/Graph.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oaugusto/Workspace/Heuristic-assignment/src/Graph.cpp -o CMakeFiles/Heuristic_assignment.dir/src/Graph.cpp.s

CMakeFiles/Heuristic_assignment.dir/src/solution.cpp.o: CMakeFiles/Heuristic_assignment.dir/flags.make
CMakeFiles/Heuristic_assignment.dir/src/solution.cpp.o: ../src/solution.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oaugusto/Workspace/Heuristic-assignment/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Heuristic_assignment.dir/src/solution.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Heuristic_assignment.dir/src/solution.cpp.o -c /home/oaugusto/Workspace/Heuristic-assignment/src/solution.cpp

CMakeFiles/Heuristic_assignment.dir/src/solution.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Heuristic_assignment.dir/src/solution.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oaugusto/Workspace/Heuristic-assignment/src/solution.cpp > CMakeFiles/Heuristic_assignment.dir/src/solution.cpp.i

CMakeFiles/Heuristic_assignment.dir/src/solution.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Heuristic_assignment.dir/src/solution.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oaugusto/Workspace/Heuristic-assignment/src/solution.cpp -o CMakeFiles/Heuristic_assignment.dir/src/solution.cpp.s

CMakeFiles/Heuristic_assignment.dir/main.cpp.o: CMakeFiles/Heuristic_assignment.dir/flags.make
CMakeFiles/Heuristic_assignment.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oaugusto/Workspace/Heuristic-assignment/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Heuristic_assignment.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Heuristic_assignment.dir/main.cpp.o -c /home/oaugusto/Workspace/Heuristic-assignment/main.cpp

CMakeFiles/Heuristic_assignment.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Heuristic_assignment.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oaugusto/Workspace/Heuristic-assignment/main.cpp > CMakeFiles/Heuristic_assignment.dir/main.cpp.i

CMakeFiles/Heuristic_assignment.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Heuristic_assignment.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oaugusto/Workspace/Heuristic-assignment/main.cpp -o CMakeFiles/Heuristic_assignment.dir/main.cpp.s

CMakeFiles/Heuristic_assignment.dir/src/Route.cpp.o: CMakeFiles/Heuristic_assignment.dir/flags.make
CMakeFiles/Heuristic_assignment.dir/src/Route.cpp.o: ../src/Route.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oaugusto/Workspace/Heuristic-assignment/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Heuristic_assignment.dir/src/Route.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Heuristic_assignment.dir/src/Route.cpp.o -c /home/oaugusto/Workspace/Heuristic-assignment/src/Route.cpp

CMakeFiles/Heuristic_assignment.dir/src/Route.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Heuristic_assignment.dir/src/Route.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oaugusto/Workspace/Heuristic-assignment/src/Route.cpp > CMakeFiles/Heuristic_assignment.dir/src/Route.cpp.i

CMakeFiles/Heuristic_assignment.dir/src/Route.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Heuristic_assignment.dir/src/Route.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oaugusto/Workspace/Heuristic-assignment/src/Route.cpp -o CMakeFiles/Heuristic_assignment.dir/src/Route.cpp.s

CMakeFiles/Heuristic_assignment.dir/src/Neighborhood.cpp.o: CMakeFiles/Heuristic_assignment.dir/flags.make
CMakeFiles/Heuristic_assignment.dir/src/Neighborhood.cpp.o: ../src/Neighborhood.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/oaugusto/Workspace/Heuristic-assignment/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Heuristic_assignment.dir/src/Neighborhood.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Heuristic_assignment.dir/src/Neighborhood.cpp.o -c /home/oaugusto/Workspace/Heuristic-assignment/src/Neighborhood.cpp

CMakeFiles/Heuristic_assignment.dir/src/Neighborhood.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Heuristic_assignment.dir/src/Neighborhood.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/oaugusto/Workspace/Heuristic-assignment/src/Neighborhood.cpp > CMakeFiles/Heuristic_assignment.dir/src/Neighborhood.cpp.i

CMakeFiles/Heuristic_assignment.dir/src/Neighborhood.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Heuristic_assignment.dir/src/Neighborhood.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/oaugusto/Workspace/Heuristic-assignment/src/Neighborhood.cpp -o CMakeFiles/Heuristic_assignment.dir/src/Neighborhood.cpp.s

# Object files for target Heuristic_assignment
Heuristic_assignment_OBJECTS = \
"CMakeFiles/Heuristic_assignment.dir/src/Graph.cpp.o" \
"CMakeFiles/Heuristic_assignment.dir/src/solution.cpp.o" \
"CMakeFiles/Heuristic_assignment.dir/main.cpp.o" \
"CMakeFiles/Heuristic_assignment.dir/src/Route.cpp.o" \
"CMakeFiles/Heuristic_assignment.dir/src/Neighborhood.cpp.o"

# External object files for target Heuristic_assignment
Heuristic_assignment_EXTERNAL_OBJECTS =

../bin/Heuristic_assignment: CMakeFiles/Heuristic_assignment.dir/src/Graph.cpp.o
../bin/Heuristic_assignment: CMakeFiles/Heuristic_assignment.dir/src/solution.cpp.o
../bin/Heuristic_assignment: CMakeFiles/Heuristic_assignment.dir/main.cpp.o
../bin/Heuristic_assignment: CMakeFiles/Heuristic_assignment.dir/src/Route.cpp.o
../bin/Heuristic_assignment: CMakeFiles/Heuristic_assignment.dir/src/Neighborhood.cpp.o
../bin/Heuristic_assignment: CMakeFiles/Heuristic_assignment.dir/build.make
../bin/Heuristic_assignment: CMakeFiles/Heuristic_assignment.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/oaugusto/Workspace/Heuristic-assignment/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ../bin/Heuristic_assignment"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Heuristic_assignment.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Heuristic_assignment.dir/build: ../bin/Heuristic_assignment

.PHONY : CMakeFiles/Heuristic_assignment.dir/build

CMakeFiles/Heuristic_assignment.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Heuristic_assignment.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Heuristic_assignment.dir/clean

CMakeFiles/Heuristic_assignment.dir/depend:
	cd /home/oaugusto/Workspace/Heuristic-assignment/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/oaugusto/Workspace/Heuristic-assignment /home/oaugusto/Workspace/Heuristic-assignment /home/oaugusto/Workspace/Heuristic-assignment/cmake-build-debug /home/oaugusto/Workspace/Heuristic-assignment/cmake-build-debug /home/oaugusto/Workspace/Heuristic-assignment/cmake-build-debug/CMakeFiles/Heuristic_assignment.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Heuristic_assignment.dir/depend

