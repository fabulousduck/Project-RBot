# Install script for directory: /Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/modules/python/python2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "python")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages" TYPE MODULE OPTIONAL FILES "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/cv2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/cv2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/cv2.so")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_calib3d.3.1.dylib" "lib/libopencv_calib3d.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_core.3.1.dylib" "lib/libopencv_core.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_features2d.3.1.dylib" "lib/libopencv_features2d.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_flann.3.1.dylib" "lib/libopencv_flann.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_highgui.3.1.dylib" "lib/libopencv_highgui.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_imgcodecs.3.1.dylib" "lib/libopencv_imgcodecs.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_imgproc.3.1.dylib" "lib/libopencv_imgproc.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_ml.3.1.dylib" "lib/libopencv_ml.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_objdetect.3.1.dylib" "lib/libopencv_objdetect.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_photo.3.1.dylib" "lib/libopencv_photo.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_shape.3.1.dylib" "lib/libopencv_shape.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_stitching.3.1.dylib" "lib/libopencv_stitching.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_superres.3.1.dylib" "lib/libopencv_superres.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_video.3.1.dylib" "lib/libopencv_video.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_videoio.3.1.dylib" "lib/libopencv_videoio.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_videostab.3.1.dylib" "lib/libopencv_videostab.3.1.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/cv2.so")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/cv2.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python2.7/site-packages/cv2.so")
    endif()
  endif()
endif()

