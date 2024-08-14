#!/usr/bin/env zsh
#              ____      __    __          __  __  _
#   ____ ___  / __/___ _/ /_  / /_  ____ _/ /_/ /_(_)
#  / __ `__ \/ /_/ __ `/ __ \/ __ \/ __ `/ __/ __/ /
# / / / / / / __/ /_/ / /_/ / / / / /_/ / /_/ /_/ /
#/_/ /_/ /_/_/  \__, /_.___/_/ /_/\__,_/\__/\__/_/
#              /____/
#
#   https://github.com/mfgbhatti/dotfile

# Default
TERMINAL="alacritty"
EDITOR="/usr/bin/nvim"
BROWSER="google-chrome-stable"

export EDITOR="$EDITOR"
export VISUAL="$EDITOR"
export BROWSER="$BROWSER"
export TERMINAL="$TERMINAL"
# export TERM="xterm-256color"

# Clean
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# MISC
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export LESSHISTFILE="-"
export HISTFILE="$XDG_STATE_HOME/zsh/history"
export GOPATH="$XDG_DATA_HOME/go"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NVM_DIR="$XDG_DATA_HOME/nvm"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
export KODI_DATA="$XDG_DATA_HOME/kodi"
export SQLITE_HISTORY="$XDG_DATA_HOME/sqlite_history"

# Ansible
export ANSIBLE_HOME="$XDG_CONFIG_HOME/ansible"
export ANSIBLE_CONFIG="$XDG_CONFIG_HOME/ansible.cfg"
export ANSIBLE_GALAXY_CACHE_DIR="$XDG_CACHE_HOME/ansible/galaxy_cache"

# Python
export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"
# export PYTHONHISTFILE="$XDG_STATE_HOME/python/history"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"

