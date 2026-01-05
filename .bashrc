#
# ~/.bashrc
#

export BROWSER=thorium-browser

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias config='/usr/bin/git --git-dir=$HOME/.config.git/ --work-tree=$HOME'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
export XDG_CURRENT_DESKTOP=Hyprland
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Alias to add, commit and push config changes 
config-sync() {
  config add .bashrc
  config add .gitignore
  config add .config/nvim
  config add .config/waybar
  config add .config/dunst
  config add .config/hypr
  config add .config/neofetch
  config add .config/starship
  config add .config/kitty
  config add .config/rofi
  config add wallpaper
  
  echo "--- Config Sync ---"
  read -p "Enter Commit Message: " msg
  
  if [-z "$msg" ]; then
      msg="Update configs"
  fi

  config commit -m "$msg"
  config push
}

