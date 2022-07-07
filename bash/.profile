# Qt configuration
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_SCALE_FACTOR=1.0
export QT_QPA_PLATFORMTHEME=qt5ct

# Fuzzy finder's searcher
export FZF_DEFAULT_COMMAND='ag --hidden --ignore={'.git','.ros','.cache','.stack','.thunderbird'} -g ""'

# Expands the PATH with the bin folder (useful for custom scripts)
export PATH=$PATH:/home/trekirk/.local/bin

#######
# ROS #
#######

# Only sources the files if they exist
if [ -f /usr/lib64/ros/setup.bash ]; then
    source '/usr/lib64/ros/setup.bash' > /dev/null
    # Custom acoustic touch recognition workspace
    if [ -f /home/trekirk/Projects/ros/atr_ws/devel/setup.bash ]; then
        source '/home/trekirk/Projects/ros/atr_ws/devel/setup.bash' > /dev/null
    fi
    # Classic catkin ws
    if [ -f /home/trekirk/Projects/ros/catkin_ws/devel/setup.bash ]; then
        source '/home/trekirk/Projects/ros/catkin_ws/devel/setup.bash' > /dev/null
        export ROS_WORKSPACE="$HOME/Projects/ros/catkin_ws"
    fi
fi

# Change or add the path to your project to enable linting
export PYTHONPATH="$PYTHONPATH:$ROS_WORKSPACE/src/federated_toolbox/src"
export PYTHONPATH="$PYTHONPATH:$ROS_WORKSPACE/src/acoustic_touch_localisation/src"


