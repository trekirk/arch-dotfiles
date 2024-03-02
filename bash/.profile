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

source ~/.rosrc
