# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.3.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.3.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/yuki/CS291A/saliency/BMS/BMS_COPY

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yuki/CS291A/saliency/BMS/BMS_COPY

# Include any dependencies generated for this target.
include CMakeFiles/BMS.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BMS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BMS.dir/flags.make

CMakeFiles/BMS.dir/BMS.h.o: CMakeFiles/BMS.dir/flags.make
CMakeFiles/BMS.dir/BMS.h.o: BMS.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yuki/CS291A/saliency/BMS/BMS_COPY/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BMS.dir/BMS.h.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/BMS.dir/BMS.h.o -c /Users/yuki/CS291A/saliency/BMS/BMS_COPY/BMS.h

CMakeFiles/BMS.dir/BMS.h.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BMS.dir/BMS.h.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/yuki/CS291A/saliency/BMS/BMS_COPY/BMS.h > CMakeFiles/BMS.dir/BMS.h.i

CMakeFiles/BMS.dir/BMS.h.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BMS.dir/BMS.h.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/yuki/CS291A/saliency/BMS/BMS_COPY/BMS.h -o CMakeFiles/BMS.dir/BMS.h.s

CMakeFiles/BMS.dir/BMS.h.o.requires:

.PHONY : CMakeFiles/BMS.dir/BMS.h.o.requires

CMakeFiles/BMS.dir/BMS.h.o.provides: CMakeFiles/BMS.dir/BMS.h.o.requires
	$(MAKE) -f CMakeFiles/BMS.dir/build.make CMakeFiles/BMS.dir/BMS.h.o.provides.build
.PHONY : CMakeFiles/BMS.dir/BMS.h.o.provides

CMakeFiles/BMS.dir/BMS.h.o.provides.build: CMakeFiles/BMS.dir/BMS.h.o


CMakeFiles/BMS.dir/BMS.cpp.o: CMakeFiles/BMS.dir/flags.make
CMakeFiles/BMS.dir/BMS.cpp.o: BMS.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yuki/CS291A/saliency/BMS/BMS_COPY/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/BMS.dir/BMS.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/BMS.dir/BMS.cpp.o -c /Users/yuki/CS291A/saliency/BMS/BMS_COPY/BMS.cpp

CMakeFiles/BMS.dir/BMS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BMS.dir/BMS.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/yuki/CS291A/saliency/BMS/BMS_COPY/BMS.cpp > CMakeFiles/BMS.dir/BMS.cpp.i

CMakeFiles/BMS.dir/BMS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BMS.dir/BMS.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/yuki/CS291A/saliency/BMS/BMS_COPY/BMS.cpp -o CMakeFiles/BMS.dir/BMS.cpp.s

CMakeFiles/BMS.dir/BMS.cpp.o.requires:

.PHONY : CMakeFiles/BMS.dir/BMS.cpp.o.requires

CMakeFiles/BMS.dir/BMS.cpp.o.provides: CMakeFiles/BMS.dir/BMS.cpp.o.requires
	$(MAKE) -f CMakeFiles/BMS.dir/build.make CMakeFiles/BMS.dir/BMS.cpp.o.provides.build
.PHONY : CMakeFiles/BMS.dir/BMS.cpp.o.provides

CMakeFiles/BMS.dir/BMS.cpp.o.provides.build: CMakeFiles/BMS.dir/BMS.cpp.o


CMakeFiles/BMS.dir/main.cpp.o: CMakeFiles/BMS.dir/flags.make
CMakeFiles/BMS.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yuki/CS291A/saliency/BMS/BMS_COPY/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/BMS.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/BMS.dir/main.cpp.o -c /Users/yuki/CS291A/saliency/BMS/BMS_COPY/main.cpp

CMakeFiles/BMS.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BMS.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/yuki/CS291A/saliency/BMS/BMS_COPY/main.cpp > CMakeFiles/BMS.dir/main.cpp.i

CMakeFiles/BMS.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BMS.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/yuki/CS291A/saliency/BMS/BMS_COPY/main.cpp -o CMakeFiles/BMS.dir/main.cpp.s

CMakeFiles/BMS.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/BMS.dir/main.cpp.o.requires

CMakeFiles/BMS.dir/main.cpp.o.provides: CMakeFiles/BMS.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/BMS.dir/build.make CMakeFiles/BMS.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/BMS.dir/main.cpp.o.provides

CMakeFiles/BMS.dir/main.cpp.o.provides.build: CMakeFiles/BMS.dir/main.cpp.o


# Object files for target BMS
BMS_OBJECTS = \
"CMakeFiles/BMS.dir/BMS.h.o" \
"CMakeFiles/BMS.dir/BMS.cpp.o" \
"CMakeFiles/BMS.dir/main.cpp.o"

# External object files for target BMS
BMS_EXTERNAL_OBJECTS =

BMS: CMakeFiles/BMS.dir/BMS.h.o
BMS: CMakeFiles/BMS.dir/BMS.cpp.o
BMS: CMakeFiles/BMS.dir/main.cpp.o
BMS: CMakeFiles/BMS.dir/build.make
BMS: /usr/local/lib/libopencv_xphoto.3.0.0.dylib
BMS: /usr/local/lib/libopencv_ximgproc.3.0.0.dylib
BMS: /usr/local/lib/libopencv_tracking.3.0.0.dylib
BMS: /usr/local/lib/libopencv_surface_matching.3.0.0.dylib
BMS: /usr/local/lib/libopencv_saliency.3.0.0.dylib
BMS: /usr/local/lib/libopencv_rgbd.3.0.0.dylib
BMS: /usr/local/lib/libopencv_reg.3.0.0.dylib
BMS: /usr/local/lib/libopencv_optflow.3.0.0.dylib
BMS: /usr/local/lib/libopencv_line_descriptor.3.0.0.dylib
BMS: /usr/local/lib/libopencv_latentsvm.3.0.0.dylib
BMS: /usr/local/lib/libopencv_datasets.3.0.0.dylib
BMS: /usr/local/lib/libopencv_ccalib.3.0.0.dylib
BMS: /usr/local/lib/libopencv_bioinspired.3.0.0.dylib
BMS: /usr/local/lib/libopencv_bgsegm.3.0.0.dylib
BMS: /usr/local/lib/libopencv_adas.3.0.0.dylib
BMS: /usr/local/lib/libopencv_videostab.3.0.0.dylib
BMS: /usr/local/lib/libopencv_superres.3.0.0.dylib
BMS: /usr/local/lib/libopencv_stitching.3.0.0.dylib
BMS: /usr/local/lib/libopencv_photo.3.0.0.dylib
BMS: /usr/local/lib/libopencv_objdetect.3.0.0.dylib
BMS: /usr/local/lib/libopencv_hal.a
BMS: /usr/local/lib/libopencv_text.3.0.0.dylib
BMS: /usr/local/lib/libopencv_face.3.0.0.dylib
BMS: /usr/local/lib/libopencv_xobjdetect.3.0.0.dylib
BMS: /usr/local/lib/libopencv_xfeatures2d.3.0.0.dylib
BMS: /usr/local/lib/libopencv_shape.3.0.0.dylib
BMS: /usr/local/lib/libopencv_video.3.0.0.dylib
BMS: /usr/local/lib/libopencv_calib3d.3.0.0.dylib
BMS: /usr/local/lib/libopencv_features2d.3.0.0.dylib
BMS: /usr/local/lib/libopencv_ml.3.0.0.dylib
BMS: /usr/local/lib/libopencv_highgui.3.0.0.dylib
BMS: /usr/local/lib/libopencv_videoio.3.0.0.dylib
BMS: /usr/local/lib/libopencv_imgcodecs.3.0.0.dylib
BMS: /usr/local/lib/libopencv_imgproc.3.0.0.dylib
BMS: /usr/local/lib/libopencv_flann.3.0.0.dylib
BMS: /usr/local/lib/libopencv_core.3.0.0.dylib
BMS: /usr/local/lib/libopencv_hal.a
BMS: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
BMS: CMakeFiles/BMS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yuki/CS291A/saliency/BMS/BMS_COPY/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable BMS"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BMS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BMS.dir/build: BMS

.PHONY : CMakeFiles/BMS.dir/build

CMakeFiles/BMS.dir/requires: CMakeFiles/BMS.dir/BMS.h.o.requires
CMakeFiles/BMS.dir/requires: CMakeFiles/BMS.dir/BMS.cpp.o.requires
CMakeFiles/BMS.dir/requires: CMakeFiles/BMS.dir/main.cpp.o.requires

.PHONY : CMakeFiles/BMS.dir/requires

CMakeFiles/BMS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BMS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BMS.dir/clean

CMakeFiles/BMS.dir/depend:
	cd /Users/yuki/CS291A/saliency/BMS/BMS_COPY && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yuki/CS291A/saliency/BMS/BMS_COPY /Users/yuki/CS291A/saliency/BMS/BMS_COPY /Users/yuki/CS291A/saliency/BMS/BMS_COPY /Users/yuki/CS291A/saliency/BMS/BMS_COPY /Users/yuki/CS291A/saliency/BMS/BMS_COPY/CMakeFiles/BMS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BMS.dir/depend

