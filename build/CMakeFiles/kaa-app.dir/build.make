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
include CMakeFiles/kaa-app.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kaa-app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kaa-app.dir/flags.make

CMakeFiles/kaa-app.dir/src/kaa_demo.c.o: CMakeFiles/kaa-app.dir/flags.make
CMakeFiles/kaa-app.dir/src/kaa_demo.c.o: ../src/kaa_demo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taher/kaa/Datacollection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/kaa-app.dir/src/kaa_demo.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kaa-app.dir/src/kaa_demo.c.o   -c /home/taher/kaa/Datacollection/src/kaa_demo.c

CMakeFiles/kaa-app.dir/src/kaa_demo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kaa-app.dir/src/kaa_demo.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/taher/kaa/Datacollection/src/kaa_demo.c > CMakeFiles/kaa-app.dir/src/kaa_demo.c.i

CMakeFiles/kaa-app.dir/src/kaa_demo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kaa-app.dir/src/kaa_demo.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/taher/kaa/Datacollection/src/kaa_demo.c -o CMakeFiles/kaa-app.dir/src/kaa_demo.c.s

CMakeFiles/kaa-app.dir/src/kaa_demo.c.o.requires:

.PHONY : CMakeFiles/kaa-app.dir/src/kaa_demo.c.o.requires

CMakeFiles/kaa-app.dir/src/kaa_demo.c.o.provides: CMakeFiles/kaa-app.dir/src/kaa_demo.c.o.requires
	$(MAKE) -f CMakeFiles/kaa-app.dir/build.make CMakeFiles/kaa-app.dir/src/kaa_demo.c.o.provides.build
.PHONY : CMakeFiles/kaa-app.dir/src/kaa_demo.c.o.provides

CMakeFiles/kaa-app.dir/src/kaa_demo.c.o.provides.build: CMakeFiles/kaa-app.dir/src/kaa_demo.c.o


# Object files for target kaa-app
kaa__app_OBJECTS = \
"CMakeFiles/kaa-app.dir/src/kaa_demo.c.o"

# External object files for target kaa-app
kaa__app_EXTERNAL_OBJECTS =

kaa-app: CMakeFiles/kaa-app.dir/src/kaa_demo.c.o
kaa-app: CMakeFiles/kaa-app.dir/build.make
kaa-app: kaa/libkaac.a
kaa-app: kaa/libextension_bootstrap.a
kaa-app: kaa/libextension_profile.a
kaa-app: kaa/libextension_user.a
kaa-app: kaa/libextension_configuration.a
kaa-app: kaa/libextension_event.a
kaa-app: kaa/libextension_logging.a
kaa-app: kaa/libextension_notification.a
kaa-app: kaa/libkaac.a
kaa-app: kaa/libextension_bootstrap.a
kaa-app: kaa/libextension_profile.a
kaa-app: kaa/libextension_user.a
kaa-app: kaa/libextension_configuration.a
kaa-app: kaa/libextension_event.a
kaa-app: kaa/libextension_logging.a
kaa-app: kaa/libextension_notification.a
kaa-app: kaa/tools/kaa_encryption/rsa_key_gen/librsa_keygen.a
kaa-app: kaa/tools/kaa_encryption/rsa_key_gen/mbedtls/libmbedtls.a
kaa-app: CMakeFiles/kaa-app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taher/kaa/Datacollection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable kaa-app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kaa-app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kaa-app.dir/build: kaa-app

.PHONY : CMakeFiles/kaa-app.dir/build

CMakeFiles/kaa-app.dir/requires: CMakeFiles/kaa-app.dir/src/kaa_demo.c.o.requires

.PHONY : CMakeFiles/kaa-app.dir/requires

CMakeFiles/kaa-app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kaa-app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kaa-app.dir/clean

CMakeFiles/kaa-app.dir/depend:
	cd /home/taher/kaa/Datacollection/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taher/kaa/Datacollection /home/taher/kaa/Datacollection /home/taher/kaa/Datacollection/build /home/taher/kaa/Datacollection/build /home/taher/kaa/Datacollection/build/CMakeFiles/kaa-app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kaa-app.dir/depend

