#
# ~/.bash_profile
#
export LIBVA_DRIVER_NAME=nvidia
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="google-chrome"

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CURRENT_DESKTOP="Wayland"

[[ -f ~/.bashrc ]] && . ~/.bashrc
