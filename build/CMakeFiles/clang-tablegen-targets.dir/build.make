# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.23

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\msys64\mingw64\bin\cmake.exe

# The command to remove a file.
RM = C:\msys64\mingw64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\jonas\Documents\Clang-CFE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\jonas\Documents\Clang-CFE\build

# Utility rule file for clang-tablegen-targets.

# Include any custom commands dependencies for this target.
include CMakeFiles/clang-tablegen-targets.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/clang-tablegen-targets.dir/progress.make

clang-tablegen-targets: CMakeFiles/clang-tablegen-targets.dir/build.make
.PHONY : clang-tablegen-targets

# Rule to build all files generated by this target.
CMakeFiles/clang-tablegen-targets.dir/build: clang-tablegen-targets
.PHONY : CMakeFiles/clang-tablegen-targets.dir/build

CMakeFiles/clang-tablegen-targets.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\clang-tablegen-targets.dir\cmake_clean.cmake
.PHONY : CMakeFiles/clang-tablegen-targets.dir/clean

CMakeFiles/clang-tablegen-targets.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\jonas\Documents\Clang-CFE C:\Users\jonas\Documents\Clang-CFE C:\Users\jonas\Documents\Clang-CFE\build C:\Users\jonas\Documents\Clang-CFE\build C:\Users\jonas\Documents\Clang-CFE\build\CMakeFiles\clang-tablegen-targets.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/clang-tablegen-targets.dir/depend
