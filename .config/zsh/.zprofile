#!/usr/bin/env zsh
#              ____      __    __          __  __  _
#   ____ ___  / __/___ _/ /_  / /_  ____ _/ /_/ /_(_)
#  / __ `__ \/ /_/ __ `/ __ \/ __ \/ __ `/ __/ __/ /
# / / / / / / __/ /_/ / /_/ / / / / /_/ / /_/ /_/ /
#/_/ /_/ /_/_/  \__, /_.___/_/ /_/\__,_/\__/\__/_/
#              /____/
#
#	https://github.com/mfgbhatti/dotfile

# Default
export EDITOR='/usr/bin/nvim'
export VISUAL="$EDITOR"
export BROWSER='brave'
export TERMINAL="alacritty"
export TERM='xterm-256color'

# Clean
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

# MISC
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export LESSHISTFILE="-"
export HISTFILE="$XDG_CACHE_HOME"/zsh/history
