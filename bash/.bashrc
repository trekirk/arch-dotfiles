# Path to your oh-my-bash installation.
export OSH=/home/trekirk/.oh-my-bash

# if [ "$TERM" = "linux" ]; then
#     echo -en "\e]P0232323" #black
#     echo -en "\e]P82B2B2B" #darkgrey
#     echo -en "\e]P1D75F5F" #darkred
#     echo -en "\e]P9E33636" #red
#     echo -en "\e]P287AF5F" #darkgreen
#     echo -en "\e]PA98E34D" #green
#     echo -en "\e]P3D7AF87" #brown
#     echo -en "\e]PBFFD75F" #yellow
#     echo -en "\e]P48787AF" #darkblue
#     echo -en "\e]PC7373C9" #blue
#     echo -en "\e]P5BD53A5" #darkmagenta
#     echo -en "\e]PDD633B2" #magenta
#     echo -en "\e]P65FAFAF" #darkcyan
#     echo -en "\e]PE44C9C9" #cyan
#     echo -en "\e]P7E5E5E5" #lightgrey
#     echo -en "\e]PFFFFFFF" #white
#     clear #for background artifacting
# fi

# # Dracula theme for TTY
# if [ "$TERM" = "linux" ]; then
# 	printf %b '\e[40m' '\e[8]' # set default background to color 0 'dracula-bg'
# 	printf %b '\e[37m' '\e[8]' # set default foreground to color 7 'dracula-fg'
# 	printf %b '\e]P0282a36'    # redefine 'black'          as 'dracula-bg'
# 	printf %b '\e]P86272a4'    # redefine 'bright-black'   as 'dracula-comment'
# 	printf %b '\e]P1ff5555'    # redefine 'red'            as 'dracula-red'
# 	printf %b '\e]P9ff7777'    # redefine 'bright-red'     as '#ff7777'
# 	printf %b '\e]P250fa7b'    # redefine 'green'          as 'dracula-green'
# 	printf %b '\e]PA70fa9b'    # redefine 'bright-green'   as '#70fa9b'
# 	printf %b '\e]P3f1fa8c'    # redefine 'brown'          as 'dracula-yellow'
# 	printf %b '\e]PBffb86c'    # redefine 'bright-brown'   as 'dracula-orange'
# 	printf %b '\e]P4bd93f9'    # redefine 'blue'           as 'dracula-purple'
# 	printf %b '\e]PCcfa9ff'    # redefine 'bright-blue'    as '#cfa9ff'
# 	printf %b '\e]P5ff79c6'    # redefine 'magenta'        as 'dracula-pink'
# 	printf %b '\e]PDff88e8'    # redefine 'bright-magenta' as '#ff88e8'
# 	printf %b '\e]P68be9fd'    # redefine 'cyan'           as 'dracula-cyan'
# 	printf %b '\e]PE97e2ff'    # redefine 'bright-cyan'    as '#97e2ff'
# 	printf %b '\e]P7f8f8f2'    # redefine 'white'          as 'dracula-fg'
# 	printf %b '\e]PFffffff'    # redefine 'bright-white'   as '#ffffff'
# 	clear
# fi

# Gruvbox theme for TTY

if [ "$TERM" = "linux" ]; then
    PREREQ=""
    prereqs()
    {
        echo "$PREREQ"
    }

case $1 in
    prereqs)
        prereqs
        exit 0
        ;;
esac

    # Gruvbox Dark
    echo "40,204,152,215,69,177,104,168,146,251,184,250,131,211,142,235
    40,36,151,153,133,98,157,153,131,73,187,189,165,134,192,219
    40,29,26,33,136,134,106,132,116,52,38,47,152,155,124,178" | setvtrgb -
fi

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="agnoster"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
    git
    composer
    ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
    general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    bashmarks
)


# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"

# don't overwrite GNU Midnight Commander's setting of 'ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

source $OSH/oh-my-bash.sh

#######################
# Some useful aliases #
#######################

## Load bash aliases file if exists
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

## If you feel playful <3
alias yeet='rm -rf'

## Modified commands
alias diff='colordiff'              # requires colordiff package
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 5'
alias dmesg='dmesg -HL'

## New commands
alias da='date "+%A, %B %d, %Y [%T]"'
alias du1='du --max-depth=1'
alias hist='history | grep'         # requires an argument
alias openports='ss --all --numeric --processes --ipv4 --ipv6'
alias pgg='ps -Af | grep'           # requires an argument
alias ..='cd ..'
alias list-fonts='fc-list'
alias vpn-uc3m='nmcli connection up UC3M_CON_CA'
alias vpn-uc3m-down='nmcli connection down UC3M_CON_CA'
alias journalctl-simple='journalctl -p5 -n 300 --no-pager'

## pacman & yay
alias pacsyu='sudo pacman -Syyu'
alias pacleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias pacunlock='sudo rm /var/lib/pacman/db.lck'
alias yaysua='yay -Sua --noconfirm'
alias yaysyu='yay -Syu --noconfirm; sudo pkgfile -u; xmonad --recompile'
alias yaycache='yay -Scc'
alias keyupdate='sudo pacman-key --refresh-keys'
alias paclist='pacman -Qqen'
alias yaylist='pacman -Qqem'
alias update-package-list-xiaomi='rm -rf $HOME/.dotfiles/pacman/package_lists/xiaomi-mi-air/*; paclist > $HOME/.dotfiles/pacman/package_lists/xiaomi-mi-air/pacman_list.txt; yaylist > $HOME/.dotfiles/pacman/package_lists/xiaomi-mi-air/aur_list.txt'

# Privileged access
if (( UID != 0 )); then
    alias sudo='sudo '
    alias scat='sudo cat'
    alias svim='sudoedit'
    alias root='sudo -i'
    alias reboot='sudo systemctl reboot'
    alias poweroff='sudo systemctl poweroff'
    alias update='yaysyu'
    alias netctl='sudo netctl'
fi

## ls
alias ls='ls -hF --color=auto'
#alias ls='ls --color=auto'
alias lr='ls -R'                    # recursive ls
alias ll='ls -l'
alias la='ll -A'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias lm='la | more'

## Safety features
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'                    # 'rm -i' prompts for every file
# safer alternative w/ timeout, not stored in history
alias rm=' timeout 3 rm -Iv --one-file-system'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias cls=' echo -ne "\033c"'       # clear screen for real (it does not work in Terminology)

## Make Bash error tolerant
alias :q=' exit'
alias :Q=' exit'
alias :x=' exit'
alias cd..='cd ..'

######################################
# Functions to make your life easier #
######################################

# Combines cd & ls
cl() {
    local dir="$1"
    local dir="${dir:=$HOME}"
    if [[ -d "$dir" ]]; then
        cd "$dir" >/dev/null; ls
    else
        echo "bash: cl: $dir: Directory not found"
    fi
}

##########
# Tricks #
##########

# In case you type a command not installed but present in the official arch repos
# IMPORTANT: Install 'pkgfile' and run 'sudo pkgfile -u' to sync the database
# To make the update dayly enable the service 'pkgfile-update.timer'
# source /usr/share/doc/pkgfile/command-not-found.bash
# Automatically prepend cd when entering just a path in the shell
shopt -s autocd
# Line wrap on window resize
shopt -s checkwinsize

# Enable bash completion (need to install bash-completion)
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

#######
# ROS #
#######

# Only sources the files if they exist
ROS_SOURCED=0
if [ -f /usr/lib64/ros/setup.bash ]; then
    source '/usr/lib64/ros/setup.bash' > /dev/null
    ROS_SOURCED=1
elif [ -f /opt/ros/noetic/setup.bash ]; then
    source '/opt/ros/noetic/setup.bash' > /dev/null
    ROS_SOURCED=1
fi

# Custom acoustic touch recognition workspace
if [ $ROS_SOURCED==1 ] && [ -f /home/trekirk/Projects/ros/atr_ws/devel/setup.bash ]; then
    source '/home/trekirk/Projects/ros/atr_ws/devel/setup.bash' > /dev/null
fi
# Classic catkin ws
if [ $ROS_SOURCED==1 ] && [ -f /home/trekirk/Projects/ros/catkin_ws/devel/setup.bash ]; then
    source '/home/trekirk/Projects/ros/catkin_ws/devel/setup.bash' > /dev/null
    export ROS_WORKSPACE="$HOME/Projects/ros/catkin_ws"
fi

alias ros-full-rebuild='yay -Syu ros-noetic-ros-base --rebuildtree'

#########################
# ENVIRONMENT VARIABLES #
#########################

export HOSTNAME
export EDITOR=vimx
alias vi='vimx'
alias vim='vimx'

###########
# Vi mode #
###########

set -o vi
# Exit with jk instead of escape
bind '"jk":vi-movement-mode'
bind -r "\e"

###########
# Startup #
###########

# neofetch
fortune | cowsay -f tux | lolcat

################
# Fuzzy finder #
################

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

# Created by `pipx` on 2022-04-05 14:26:11
export PATH="$PATH:/home/trekirk/.local/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


