#!/bin/bash
workspace=$(pwd)

source ~/.bashrc



 gnome-terminal -t "master1" -x sudo bash -c "cd ${workspace}/master1; source devel/setup.bash && roslaunch arm_control L5.launch; exec bash;"
 sleep 1
 gnome-terminal -t "follow1" -x sudo bash -c "cd ${workspace}/pos_follow1; source devel/setup.bash && roslaunch arm_control L5.launch; exec bash;"
 sleep 1
 gnome-terminal -t "master2" -x sudo bash -c "cd ${workspace}/master2; source devel/setup.bash && roslaunch arm_control L5.launch; exec bash;"
 sleep 1
 gnome-terminal -t "follow2" -x sudo bash -c "cd ${workspace}/pos_follow2; source devel/setup.bash && roslaunch arm_control L5.launch; exec bash;"


