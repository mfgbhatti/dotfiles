
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
