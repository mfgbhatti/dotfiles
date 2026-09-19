#!/data/data/com.twrmux/files/usr/bin/env zsh
# Source aliases and setopts
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc"

# setopts for zsh
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/setopt" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/setopt"

## Load zsh plugins
source "$XDG_CONFIG_HOME"/zsh/plugins/zsh-you-should-use/zsh-you-should-use.plugin.zsh 2>/dev/null

source "$XDG_CONFIG_HOME"/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source "$XDG_CONFIG_HOME"/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source "$XDG_CONFIG_HOME"/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh 2>/dev/null

## starship
eval "$(starship init zsh)"

# enable fzf
source <(fzf --zsh)

# History in cache director
HISTSIZE=10000
SAVEHIST=10000

# Enable zmv move - rename
autoload -Uz zmv
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)               # Include hidden files.
# if [[ -n ${HOME}/.cache/zsh/zcompdump-${ZSH_VERSION}(#qN.mh+24) ]]; then
# 	  compinit -d "${HOME}/.cache/zsh/zcompdump-${ZSH_VERSION}"
#   else
# 	    compinit -C
# fi
# Press Ctrl+z to undo
bindkey '^Z' undo
# # Redo widget exists but has no default binding:
bindkey '^Y' redo

# Expands history expressions like !! or !$ when you press space
bindkey ' ' magic-space
# Alternative hardcoded sequence mappings
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

