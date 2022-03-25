#!/usr/bin/bash

# Install bootstrap dependencies
# These tools are used to facilitate the download and management of ROS packages and their dependencies, among other things. 
sudo dnf install gcc-c++ python3-rosdep python3-rosinstall_generator python3-vcstool @buildsys-build
sudo rosdep init
rosdep update

# Next we will want to download the source code for ROS packages so we can build them. We will use vcstool for this. 
rosinstall_generator desktop --rosdistro noetic --deps --tar > noetic-desktop.rosinstall
mkdir -p ./src
vcs import --input noetic-desktop.rosinstall ./src

# Before you can build your catkin workspace you need to make sure that you have all the system dependencies on your platform.
rosdep install --from-paths ./src --ignore-packages-from-source --rosdistro noetic -y

# By now you have a workspace with all of the source code, and all required system dependencies have been installed. Now it's time to build the code.
catkin config --install --install-space /opt/ros/noetic --cmake-args -DCMAKE_BUILD_TYPE=Release -DPYTHON_EXECUTABLE=/usr/bin/python3
catkin build
