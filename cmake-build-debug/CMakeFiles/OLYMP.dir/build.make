# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\local_admin\CLionProjects\OLYMP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\local_admin\CLionProjects\OLYMP\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/OLYMP.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OLYMP.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OLYMP.dir/flags.make

CMakeFiles/OLYMP.dir/main.cpp.obj: CMakeFiles/OLYMP.dir/flags.make
CMakeFiles/OLYMP.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\local_admin\CLionProjects\OLYMP\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OLYMP.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\OLYMP.dir\main.cpp.obj -c C:\Users\local_admin\CLionProjects\OLYMP\main.cpp

CMakeFiles/OLYMP.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OLYMP.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\local_admin\CLionProjects\OLYMP\main.cpp > CMakeFiles\OLYMP.dir\main.cpp.i

CMakeFiles/OLYMP.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OLYMP.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\local_admin\CLionProjects\OLYMP\main.cpp -o CMakeFiles\OLYMP.dir\main.cpp.s

# Object files for target OLYMP
OLYMP_OBJECTS = \
"CMakeFiles/OLYMP.dir/main.cpp.obj"

# External object files for target OLYMP
OLYMP_EXTERNAL_OBJECTS =

OLYMP.exe: CMakeFiles/OLYMP.dir/main.cpp.obj
OLYMP.exe: CMakeFiles/OLYMP.dir/build.make
OLYMP.exe: CMakeFiles/OLYMP.dir/linklibs.rsp
OLYMP.exe: CMakeFiles/OLYMP.dir/objects1.rsp
OLYMP.exe: CMakeFiles/OLYMP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\local_admin\CLionProjects\OLYMP\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable OLYMP.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\OLYMP.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OLYMP.dir/build: OLYMP.exe

.PHONY : CMakeFiles/OLYMP.dir/build

CMakeFiles/OLYMP.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\OLYMP.dir\cmake_clean.cmake
.PHONY : CMakeFiles/OLYMP.dir/clean

CMakeFiles/OLYMP.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\local_admin\CLionProjects\OLYMP C:\Users\local_admin\CLionProjects\OLYMP C:\Users\local_admin\CLionProjects\OLYMP\cmake-build-debug C:\Users\local_admin\CLionProjects\OLYMP\cmake-build-debug C:\Users\local_admin\CLionProjects\OLYMP\cmake-build-debug\CMakeFiles\OLYMP.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OLYMP.dir/depend

