#!/bin/bash
workspace=$(pwd)

source ~/.bashrc



gnome-terminal -t "follow1" -x  bash -c "cd ${workspace}/follow1; rm -rf build devel .catkin_workspace src/CMakeLists.txt; catkin_make clean ;catkin_make; exec bash; "
sleep 1 
gnome-terminal -t "follow2" -x  bash -c "cd ${workspace}/follow2; rm -rf build devel .catkin_workspace src/CMakeLists.txt; catkin_make clean ;catkin_make; exec bash; "
sleep 1 
gnome-terminal -t "pos_follow1" -x  bash -c "cd ${workspace}/pos_follow1; rm -rf build devel .catkin_workspace src/CMakeLists.txt; catkin_make clean ;catkin_make; exec bash; "
sleep 1 
gnome-terminal -t "pos_follow2" -x  bash -c "cd ${workspace}/pos_follow2; rm -rf build devel .catkin_workspace src/CMakeLists.txt; catkin_make clean ;catkin_make; exec bash; "
sleep 1 
gnome-terminal -t "gripper" -x  bash -c "cd ${workspace}/gripper; rm -rf build devel .catkin_workspace src/CMakeLists.txt; catkin_make clean ;catkin_make; exec bash; "
