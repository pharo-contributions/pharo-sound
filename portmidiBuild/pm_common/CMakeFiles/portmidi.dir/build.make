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
CMAKE_SOURCE_DIR = /Users/antoine/Desktop/pharo-sound/portmidi

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/antoine/Desktop/pharo-sound/portmidiBuild

# Include any dependencies generated for this target.
include pm_common/CMakeFiles/portmidi.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include pm_common/CMakeFiles/portmidi.dir/compiler_depend.make

# Include the progress variables for this target.
include pm_common/CMakeFiles/portmidi.dir/progress.make

# Include the compile flags for this target's objects.
include pm_common/CMakeFiles/portmidi.dir/flags.make

pm_common/CMakeFiles/portmidi.dir/portmidi.c.o: pm_common/CMakeFiles/portmidi.dir/flags.make
pm_common/CMakeFiles/portmidi.dir/portmidi.c.o: /Users/antoine/Desktop/pharo-sound/portmidi/pm_common/portmidi.c
pm_common/CMakeFiles/portmidi.dir/portmidi.c.o: pm_common/CMakeFiles/portmidi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoine/Desktop/pharo-sound/portmidiBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object pm_common/CMakeFiles/portmidi.dir/portmidi.c.o"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT pm_common/CMakeFiles/portmidi.dir/portmidi.c.o -MF CMakeFiles/portmidi.dir/portmidi.c.o.d -o CMakeFiles/portmidi.dir/portmidi.c.o -c /Users/antoine/Desktop/pharo-sound/portmidi/pm_common/portmidi.c

pm_common/CMakeFiles/portmidi.dir/portmidi.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi.dir/portmidi.c.i"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/antoine/Desktop/pharo-sound/portmidi/pm_common/portmidi.c > CMakeFiles/portmidi.dir/portmidi.c.i

pm_common/CMakeFiles/portmidi.dir/portmidi.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi.dir/portmidi.c.s"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/antoine/Desktop/pharo-sound/portmidi/pm_common/portmidi.c -o CMakeFiles/portmidi.dir/portmidi.c.s

pm_common/CMakeFiles/portmidi.dir/pmutil.c.o: pm_common/CMakeFiles/portmidi.dir/flags.make
pm_common/CMakeFiles/portmidi.dir/pmutil.c.o: /Users/antoine/Desktop/pharo-sound/portmidi/pm_common/pmutil.c
pm_common/CMakeFiles/portmidi.dir/pmutil.c.o: pm_common/CMakeFiles/portmidi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoine/Desktop/pharo-sound/portmidiBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object pm_common/CMakeFiles/portmidi.dir/pmutil.c.o"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT pm_common/CMakeFiles/portmidi.dir/pmutil.c.o -MF CMakeFiles/portmidi.dir/pmutil.c.o.d -o CMakeFiles/portmidi.dir/pmutil.c.o -c /Users/antoine/Desktop/pharo-sound/portmidi/pm_common/pmutil.c

pm_common/CMakeFiles/portmidi.dir/pmutil.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi.dir/pmutil.c.i"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/antoine/Desktop/pharo-sound/portmidi/pm_common/pmutil.c > CMakeFiles/portmidi.dir/pmutil.c.i

pm_common/CMakeFiles/portmidi.dir/pmutil.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi.dir/pmutil.c.s"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/antoine/Desktop/pharo-sound/portmidi/pm_common/pmutil.c -o CMakeFiles/portmidi.dir/pmutil.c.s

pm_common/CMakeFiles/portmidi.dir/__/porttime/porttime.c.o: pm_common/CMakeFiles/portmidi.dir/flags.make
pm_common/CMakeFiles/portmidi.dir/__/porttime/porttime.c.o: /Users/antoine/Desktop/pharo-sound/portmidi/porttime/porttime.c
pm_common/CMakeFiles/portmidi.dir/__/porttime/porttime.c.o: pm_common/CMakeFiles/portmidi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoine/Desktop/pharo-sound/portmidiBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object pm_common/CMakeFiles/portmidi.dir/__/porttime/porttime.c.o"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT pm_common/CMakeFiles/portmidi.dir/__/porttime/porttime.c.o -MF CMakeFiles/portmidi.dir/__/porttime/porttime.c.o.d -o CMakeFiles/portmidi.dir/__/porttime/porttime.c.o -c /Users/antoine/Desktop/pharo-sound/portmidi/porttime/porttime.c

pm_common/CMakeFiles/portmidi.dir/__/porttime/porttime.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi.dir/__/porttime/porttime.c.i"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/antoine/Desktop/pharo-sound/portmidi/porttime/porttime.c > CMakeFiles/portmidi.dir/__/porttime/porttime.c.i

pm_common/CMakeFiles/portmidi.dir/__/porttime/porttime.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi.dir/__/porttime/porttime.c.s"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/antoine/Desktop/pharo-sound/portmidi/porttime/porttime.c -o CMakeFiles/portmidi.dir/__/porttime/porttime.c.s

pm_common/CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.o: pm_common/CMakeFiles/portmidi.dir/flags.make
pm_common/CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.o: /Users/antoine/Desktop/pharo-sound/portmidi/porttime/ptmacosx_mach.c
pm_common/CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.o: pm_common/CMakeFiles/portmidi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoine/Desktop/pharo-sound/portmidiBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object pm_common/CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.o"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT pm_common/CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.o -MF CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.o.d -o CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.o -c /Users/antoine/Desktop/pharo-sound/portmidi/porttime/ptmacosx_mach.c

pm_common/CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.i"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/antoine/Desktop/pharo-sound/portmidi/porttime/ptmacosx_mach.c > CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.i

pm_common/CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.s"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/antoine/Desktop/pharo-sound/portmidi/porttime/ptmacosx_mach.c -o CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.s

pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.o: pm_common/CMakeFiles/portmidi.dir/flags.make
pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.o: /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/pmmac.c
pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.o: pm_common/CMakeFiles/portmidi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoine/Desktop/pharo-sound/portmidiBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.o"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.o -MF CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.o.d -o CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.o -c /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/pmmac.c

pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.i"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/pmmac.c > CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.i

pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.s"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/pmmac.c -o CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.s

pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.o: pm_common/CMakeFiles/portmidi.dir/flags.make
pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.o: /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/pmmacosxcm.c
pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.o: pm_common/CMakeFiles/portmidi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoine/Desktop/pharo-sound/portmidiBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.o"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.o -MF CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.o.d -o CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.o -c /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/pmmacosxcm.c

pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.i"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/pmmacosxcm.c > CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.i

pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.s"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/pmmacosxcm.c -o CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.s

pm_common/CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.o: pm_common/CMakeFiles/portmidi.dir/flags.make
pm_common/CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.o: /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/finddefault.c
pm_common/CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.o: pm_common/CMakeFiles/portmidi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoine/Desktop/pharo-sound/portmidiBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object pm_common/CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.o"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT pm_common/CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.o -MF CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.o.d -o CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.o -c /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/finddefault.c

pm_common/CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.i"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/finddefault.c > CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.i

pm_common/CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.s"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/finddefault.c -o CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.s

pm_common/CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.o: pm_common/CMakeFiles/portmidi.dir/flags.make
pm_common/CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.o: /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/readbinaryplist.c
pm_common/CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.o: pm_common/CMakeFiles/portmidi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/antoine/Desktop/pharo-sound/portmidiBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object pm_common/CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.o"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT pm_common/CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.o -MF CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.o.d -o CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.o -c /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/readbinaryplist.c

pm_common/CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.i"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/readbinaryplist.c > CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.i

pm_common/CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.s"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/antoine/Desktop/pharo-sound/portmidi/pm_mac/readbinaryplist.c -o CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.s

# Object files for target portmidi
portmidi_OBJECTS = \
"CMakeFiles/portmidi.dir/portmidi.c.o" \
"CMakeFiles/portmidi.dir/pmutil.c.o" \
"CMakeFiles/portmidi.dir/__/porttime/porttime.c.o" \
"CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.o" \
"CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.o" \
"CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.o" \
"CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.o" \
"CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.o"

# External object files for target portmidi
portmidi_EXTERNAL_OBJECTS =

libportmidi.2.0.3.dylib: pm_common/CMakeFiles/portmidi.dir/portmidi.c.o
libportmidi.2.0.3.dylib: pm_common/CMakeFiles/portmidi.dir/pmutil.c.o
libportmidi.2.0.3.dylib: pm_common/CMakeFiles/portmidi.dir/__/porttime/porttime.c.o
libportmidi.2.0.3.dylib: pm_common/CMakeFiles/portmidi.dir/__/porttime/ptmacosx_mach.c.o
libportmidi.2.0.3.dylib: pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmac.c.o
libportmidi.2.0.3.dylib: pm_common/CMakeFiles/portmidi.dir/__/pm_mac/pmmacosxcm.c.o
libportmidi.2.0.3.dylib: pm_common/CMakeFiles/portmidi.dir/__/pm_mac/finddefault.c.o
libportmidi.2.0.3.dylib: pm_common/CMakeFiles/portmidi.dir/__/pm_mac/readbinaryplist.c.o
libportmidi.2.0.3.dylib: pm_common/CMakeFiles/portmidi.dir/build.make
libportmidi.2.0.3.dylib: pm_common/CMakeFiles/portmidi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/antoine/Desktop/pharo-sound/portmidiBuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking C shared library ../libportmidi.dylib"
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/portmidi.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && $(CMAKE_COMMAND) -E cmake_symlink_library ../libportmidi.2.0.3.dylib ../libportmidi.2.dylib ../libportmidi.dylib

libportmidi.2.dylib: libportmidi.2.0.3.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate libportmidi.2.dylib

libportmidi.dylib: libportmidi.2.0.3.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate libportmidi.dylib

# Rule to build all files generated by this target.
pm_common/CMakeFiles/portmidi.dir/build: libportmidi.dylib
.PHONY : pm_common/CMakeFiles/portmidi.dir/build

pm_common/CMakeFiles/portmidi.dir/clean:
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common && $(CMAKE_COMMAND) -P CMakeFiles/portmidi.dir/cmake_clean.cmake
.PHONY : pm_common/CMakeFiles/portmidi.dir/clean

pm_common/CMakeFiles/portmidi.dir/depend:
	cd /Users/antoine/Desktop/pharo-sound/portmidiBuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/antoine/Desktop/pharo-sound/portmidi /Users/antoine/Desktop/pharo-sound/portmidi/pm_common /Users/antoine/Desktop/pharo-sound/portmidiBuild /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common /Users/antoine/Desktop/pharo-sound/portmidiBuild/pm_common/CMakeFiles/portmidi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pm_common/CMakeFiles/portmidi.dir/depend
