export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_SCALE_FACTOR=1.0
export FZF_DEFAULT_COMMAND='ag --hidden --ignore={'.git','.ros','.cache','.stack','.thunderbird'} -g ""'

export PATH=$PATH:/home/trekirk/.local/bin
#######
# ROS #
#######

source '/opt/ros/noetic/setup.bash' > /dev/null
source '/home/trekirk/Projects/ros/catkin_ws/devel/setup.bash' > /dev/null
export ROS_WORKSPACE="/home/trekirk/Projects/ros/catkin_ws"
export PYTHONPATH="$PYTHONPATH:$ROS_WORKSPACE/src/federated/src"
