#!/data/data/com.termux/files/usr/binn/env zsh
# Default
EDITOR="/data/data/com.termux/files/usr/bin/nvim"

export EDITOR="$EDITOR"
export VISUAL="$EDITOR"

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
# Npm config
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
# Add npm bin to path
export PATH="$HOME/.local/share/npm/bin:$PATH"
export NVM_DIR="$XDG_DATA_HOME/nvm"

# Python
export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
