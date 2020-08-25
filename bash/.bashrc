#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

# Default PS1
#PS1='[\u@\h \W]\$ '

#################
# Adding colors #
#################

BLUE=`tput setf 1`
GREEN=`tput setf 2`
CYAN=`tput setf 3`
RED=`tput setf 4`
MAGENTA=`tput setf 5`
YELLOW=`tput setf 6`
WHITE=`tput setf 7`
PS1='\[$YELLOW\]\u\[$MAGENTA\]@\[$CYAN\]\h \[$BLUE\]\w\[$GREEN\] \$\[$WHITE\] '

#######################
# Some useful aliases #
#######################

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

## pacman & yay
alias pacsyu='sudo pacman -Syyu'
alias pacleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias pacunlock='sudo rm /var/lib/pacman/db.lck'
alias yaysua='yay -Sua --noconfirm'
alias yaysyu='yay -Syu --noconfirm'
alias yaycache='yay -Scc'
alias list-pacman='pacman -Qqen'
alias list-aur='pacman -Qqem'
alias list-update='list-pacman > $HOME/.dotfiles/package_lists/.pacman_list; list-aur > $HOME/.dotfiles/package_lists/.aur_list'
# Privileged access
if (( UID != 0 )); then
    alias sudo='sudo '
    alias scat='sudo cat'
    alias svim='sudoedit'
    alias root='sudo -i'
    alias reboot='sudo systemctl reboot'
    alias poweroff='sudo systemctl poweroff'
    alias update='sudo pacman -Su'
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
source /usr/share/doc/pkgfile/command-not-found.bash
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

neofetch
