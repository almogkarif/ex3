# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lmwgqryp/Desktop/technion/matam/ex3/ex3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lmwgqryp/Desktop/technion/matam/ex3/ex3/build

# Include any dependencies generated for this target.
include CMakeFiles/my_executable.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/my_executable.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/my_executable.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my_executable.dir/flags.make

CMakeFiles/my_executable.dir/QueueExampleTests.cpp.o: CMakeFiles/my_executable.dir/flags.make
CMakeFiles/my_executable.dir/QueueExampleTests.cpp.o: ../QueueExampleTests.cpp
CMakeFiles/my_executable.dir/QueueExampleTests.cpp.o: CMakeFiles/my_executable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lmwgqryp/Desktop/technion/matam/ex3/ex3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/my_executable.dir/QueueExampleTests.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_executable.dir/QueueExampleTests.cpp.o -MF CMakeFiles/my_executable.dir/QueueExampleTests.cpp.o.d -o CMakeFiles/my_executable.dir/QueueExampleTests.cpp.o -c /Users/lmwgqryp/Desktop/technion/matam/ex3/ex3/QueueExampleTests.cpp

CMakeFiles/my_executable.dir/QueueExampleTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_executable.dir/QueueExampleTests.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lmwgqryp/Desktop/technion/matam/ex3/ex3/QueueExampleTests.cpp > CMakeFiles/my_executable.dir/QueueExampleTests.cpp.i

CMakeFiles/my_executable.dir/QueueExampleTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_executable.dir/QueueExampleTests.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lmwgqryp/Desktop/technion/matam/ex3/ex3/QueueExampleTests.cpp -o CMakeFiles/my_executable.dir/QueueExampleTests.cpp.s

CMakeFiles/my_executable.dir/TestMain.cpp.o: CMakeFiles/my_executable.dir/flags.make
CMakeFiles/my_executable.dir/TestMain.cpp.o: ../TestMain.cpp
CMakeFiles/my_executable.dir/TestMain.cpp.o: CMakeFiles/my_executable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lmwgqryp/Desktop/technion/matam/ex3/ex3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/my_executable.dir/TestMain.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_executable.dir/TestMain.cpp.o -MF CMakeFiles/my_executable.dir/TestMain.cpp.o.d -o CMakeFiles/my_executable.dir/TestMain.cpp.o -c /Users/lmwgqryp/Desktop/technion/matam/ex3/ex3/TestMain.cpp

CMakeFiles/my_executable.dir/TestMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_executable.dir/TestMain.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lmwgqryp/Desktop/technion/matam/ex3/ex3/TestMain.cpp > CMakeFiles/my_executable.dir/TestMain.cpp.i

CMakeFiles/my_executable.dir/TestMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_executable.dir/TestMain.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lmwgqryp/Desktop/technion/matam/ex3/ex3/TestMain.cpp -o CMakeFiles/my_executable.dir/TestMain.cpp.s

# Object files for target my_executable
my_executable_OBJECTS = \
"CMakeFiles/my_executable.dir/QueueExampleTests.cpp.o" \
"CMakeFiles/my_executable.dir/TestMain.cpp.o"

# External object files for target my_executable
my_executable_EXTERNAL_OBJECTS =

my_executable: CMakeFiles/my_executable.dir/QueueExampleTests.cpp.o
my_executable: CMakeFiles/my_executable.dir/TestMain.cpp.o
my_executable: CMakeFiles/my_executable.dir/build.make
my_executable: CMakeFiles/my_executable.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lmwgqryp/Desktop/technion/matam/ex3/ex3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable my_executable"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_executable.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my_executable.dir/build: my_executable
.PHONY : CMakeFiles/my_executable.dir/build

CMakeFiles/my_executable.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/my_executable.dir/cmake_clean.cmake
.PHONY : CMakeFiles/my_executable.dir/clean

CMakeFiles/my_executable.dir/depend:
	cd /Users/lmwgqryp/Desktop/technion/matam/ex3/ex3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lmwgqryp/Desktop/technion/matam/ex3/ex3 /Users/lmwgqryp/Desktop/technion/matam/ex3/ex3 /Users/lmwgqryp/Desktop/technion/matam/ex3/ex3/build /Users/lmwgqryp/Desktop/technion/matam/ex3/ex3/build /Users/lmwgqryp/Desktop/technion/matam/ex3/ex3/build/CMakeFiles/my_executable.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/my_executable.dir/depend

