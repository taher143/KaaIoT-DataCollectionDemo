# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/taher/kaa/Datacollection

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/taher/kaa/Datacollection/build

# Include any dependencies generated for this target.
include kaa/CMakeFiles/extension_logging.dir/depend.make

# Include the progress variables for this target.
include kaa/CMakeFiles/extension_logging.dir/progress.make

# Include the compile flags for this target's objects.
include kaa/CMakeFiles/extension_logging.dir/flags.make

kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o: kaa/CMakeFiles/extension_logging.dir/flags.make
kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o: ../kaa/src/extensions/logging/kaa_logging.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taher/kaa/Datacollection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o"
	cd /home/taher/kaa/Datacollection/build/kaa && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o   -c /home/taher/kaa/Datacollection/kaa/src/extensions/logging/kaa_logging.c

kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.i"
	cd /home/taher/kaa/Datacollection/build/kaa && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/taher/kaa/Datacollection/kaa/src/extensions/logging/kaa_logging.c > CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.i

kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.s"
	cd /home/taher/kaa/Datacollection/build/kaa && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/taher/kaa/Datacollection/kaa/src/extensions/logging/kaa_logging.c -o CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.s

kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o.requires:

.PHONY : kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o.requires

kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o.provides: kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o.requires
	$(MAKE) -f kaa/CMakeFiles/extension_logging.dir/build.make kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o.provides.build
.PHONY : kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o.provides

kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o.provides.build: kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o


# Object files for target extension_logging
extension_logging_OBJECTS = \
"CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o"

# External object files for target extension_logging
extension_logging_EXTERNAL_OBJECTS =

kaa/libextension_logging.a: kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o
kaa/libextension_logging.a: kaa/CMakeFiles/extension_logging.dir/build.make
kaa/libextension_logging.a: kaa/CMakeFiles/extension_logging.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taher/kaa/Datacollection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libextension_logging.a"
	cd /home/taher/kaa/Datacollection/build/kaa && $(CMAKE_COMMAND) -P CMakeFiles/extension_logging.dir/cmake_clean_target.cmake
	cd /home/taher/kaa/Datacollection/build/kaa && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/extension_logging.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
kaa/CMakeFiles/extension_logging.dir/build: kaa/libextension_logging.a

.PHONY : kaa/CMakeFiles/extension_logging.dir/build

kaa/CMakeFiles/extension_logging.dir/requires: kaa/CMakeFiles/extension_logging.dir/src/extensions/logging/kaa_logging.c.o.requires

.PHONY : kaa/CMakeFiles/extension_logging.dir/requires

kaa/CMakeFiles/extension_logging.dir/clean:
	cd /home/taher/kaa/Datacollection/build/kaa && $(CMAKE_COMMAND) -P CMakeFiles/extension_logging.dir/cmake_clean.cmake
.PHONY : kaa/CMakeFiles/extension_logging.dir/clean

kaa/CMakeFiles/extension_logging.dir/depend:
	cd /home/taher/kaa/Datacollection/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taher/kaa/Datacollection /home/taher/kaa/Datacollection/kaa /home/taher/kaa/Datacollection/build /home/taher/kaa/Datacollection/build/kaa /home/taher/kaa/Datacollection/build/kaa/CMakeFiles/extension_logging.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : kaa/CMakeFiles/extension_logging.dir/depend

