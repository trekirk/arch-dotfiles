#!/usr/bin/bash

# To update your workspace, first move your existing rosinstall file
# so that it doesn't get overwritten, and generate an updated version
mv -i noetic-desktop.rosinstall noetic-desktop.rosinstall.old
rosinstall_generator desktop --rosdistro noetic --deps --tar > noetic-desktop.rosinstall

# Then, compare the new rosinstall file to the old version to see which packages will be updated: 
diff -u noetic-desktop.rosinstall noetic-desktop.rosinstall.old

# If you're satisfied with these changes, incorporate the new rosinstall file into the workspace and update your workspace: 
vcs import --input noetic-desktop.rosinstall ./src

catkin config --install --install-space /opt/ros/noetic --cmake-args -DCMAKE_BUILD_TYPE=Release -DPYTHON_EXECUTABLE=/usr/bin/python3
catkin build
