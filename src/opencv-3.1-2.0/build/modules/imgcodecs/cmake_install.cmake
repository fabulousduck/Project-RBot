# Install script for directory: /Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/modules/imgcodecs

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libs")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY OPTIONAL FILES
    "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_imgcodecs.3.1.0.dylib"
    "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_imgcodecs.3.1.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_imgcodecs.3.1.0.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_imgcodecs.3.1.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -id "lib/libopencv_imgcodecs.3.1.dylib"
        -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_core.3.1.dylib" "lib/libopencv_core.3.1.dylib"
        -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_imgproc.3.1.dylib" "lib/libopencv_imgproc.3.1.dylib"
        "${file}")
      execute_process(COMMAND /usr/bin/install_name_tool
        -add_rpath "/usr/local/lib"
        "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_imgcodecs.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_imgcodecs.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_imgcodecs.dylib")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -id "lib/libopencv_imgcodecs.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_core.3.1.dylib" "lib/libopencv_core.3.1.dylib"
      -change "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/lib/libopencv_imgproc.3.1.dylib" "lib/libopencv_imgproc.3.1.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_imgcodecs.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -add_rpath "/usr/local/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_imgcodecs.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libopencv_imgcodecs.dylib")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/modules/imgcodecs/include/opencv2/imgcodecs.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/imgcodecs" TYPE FILE OPTIONAL FILES "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/modules/imgcodecs/include/opencv2/imgcodecs/imgcodecs.hpp")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/imgcodecs" TYPE FILE OPTIONAL FILES "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/modules/imgcodecs/include/opencv2/imgcodecs/imgcodecs_c.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "dev")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/imgcodecs" TYPE FILE OPTIONAL FILES "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/modules/imgcodecs/include/opencv2/imgcodecs/ios.h")
endif()

