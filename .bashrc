#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
alias config='/usr/bin/git --git-dir=/home/marvin/.cfg/ --work-tree=/home/marvin'
export XDG_CURRENT_DESKTOP=Hyprland
export STARSHIP_CONFIG=~/.config/starship/starship.toml

#run neofetch on start 
neofetch
