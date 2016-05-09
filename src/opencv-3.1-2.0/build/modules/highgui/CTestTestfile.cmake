# CMake generated Testfile for 
# Source directory: /Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/modules/highgui
# Build directory: /Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/modules/highgui
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_highgui "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/bin/opencv_test_highgui" "--gtest_output=xml:opencv_test_highgui.xml")
set_tests_properties(opencv_test_highgui PROPERTIES  LABELS "Main;opencv_highgui;Accuracy" WORKING_DIRECTORY "/Users/ryanvlaming/Desktop/CPP/FRS/src/opencv-3.1-2.0/build/test-reports/accuracy")
