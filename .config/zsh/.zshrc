#              ____      __    __          __  __  _
#   ____ ___  / __/___ _/ /_  / /_  ____ _/ /_/ /_(_)
#  / __ `__ \/ /_/ __ `/ __ \/ __ \/ __ `/ __/ __/ /
# / / / / / / __/ /_/ / /_/ / / / / /_/ / /_/ /_/ /
#/_/ /_/ /_/_/  \__, /_.___/_/ /_/\__,_/\__/\__/_/
#              /____/
#
#	https://github.com/mfgbhatti/dotfile

# Source aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc"

# Loading p10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme 2>/dev/null

## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f "$XDG_CONFIG_HOME"/zsh/.p10k.zsh ]] || source "$XDG_CONFIG_HOME"/zsh/.p10k.zsh

## Load zsh plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh 2>/dev/null

# History in cache director
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

## Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)               # Include hidden files.


# Prompt Settings
# declare -a PROMPTS
# PROMPTS=(
#     "∮"
#     "ف"
#     "س"
#     "ǁ"
#     ""
#     ""
#     ""
#     ""
#     ""
#     ""
# )
# RANDOM=$$$(date +%s)
# ignition=${PROMPTS[$RANDOM % ${#RANDOM[*]}+1]}
# #PROMPT='%F{yellow}%1~%f %F{green}'$ignition'%f '
# PROMPT='%F{yellow}%1~%f %F{green}>%f '

## Git Settings
#autoload -Uz vcs_info
#precmd_vcs_info() { vcs_info }
#precmd_functions+=( precmd_vcs_info )
#setopt prompt_subst
#RPROMPT=\$vcs_info_msg_0_
#zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
#zstyle ':vcs_info:*' enable git

## Key Bindings
bindkey '^[[7~' beginning-of-line 	#home key
bindkey '^[[H' beginning-of-line 	#home key
bindkey '^[[8~' end-of-line 		#end key
bindkey '^[[F' end-of-line 		#end key
bindkey '^[[2~' overwrite-mode 		#insert key
bindkey '^[[3~' delete-char    		#delete key
bindkey '^[[C' forward-char    		#right key
bindkey '^[[D' backward-char   		#left key

## ctrl+arrow
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5A' history-substring-search-up # crtl + up-arrow
bindkey '^[[1;5B' history-substring-search-down # crtl + down-arrow
bindkey '^[[1;3B' history-search-forward # alt + up-arrow
bindkey '^[[1;3A' history-search-backward # alt + down-arrow
