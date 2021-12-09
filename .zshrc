#              ____      __    __          __  __  _ 
#   ____ ___  / __/___ _/ /_  / /_  ____ _/ /_/ /_(_)
#  / __ `__ \/ /_/ __ `/ __ \/ __ \/ __ `/ __/ __/ / 
# / / / / / / __/ /_/ / /_/ / / / / /_/ / /_/ /_/ /  
#/_/ /_/ /_/_/  \__, /_.___/_/ /_/\__,_/\__/\__/_/   
#              /____/                                
#
#	https://github.com/mfgbhatti/dotfile
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Loading p10k
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme 2>/dev/null
# Exporting 
export TERM='xterm-256color'
export EDITOR='vim'

# Prompt Settings
declare -a PROMPTS
PROMPTS=(
    "∮"
    "ف"
    "س"
    "ǁ"
    ""
    ""
    ""
    ""
    ""
    ""
)
RANDOM=$$$(date +%s)
ignition=${PROMPTS[$RANDOM % ${#RANDOM[*]}+1]}
#PROMPT='%F{yellow}%1~%f %F{green}'$ignition'%f '
PROMPT='%F{yellow}%1~%f %F{green}>%f '

## Git Settings
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# History in cache director
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
setopt appendhistory

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# Load zsh plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Key Bindings
bindkey '^[[7~' beginning-of-line 	#home key
bindkey '^[[H' beginning-of-line 	#home key
bindkey '^[[8~' end-of-line 		#end key
bindkey '^[[F' end-of-line 		#end key
bindkey '^[[2~' overwrite-mode 		#insert key
bindkey '^[[3~' delete-char    		#delete key
bindkey '^[[C' forward-char    		#right key
bindkey '^[[D' backward-char   		#left key
# ctrl+arrow
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^[[1;3B' history-search-forward
bindkey '^[[1;3A' history-search-backward

# Aliases
alias w='nitrogen --set-zoom-fill --random ~/Pictures/wallpapers'
alias vi=vim
alias df='df -h'
alias ls='ls -hF --color'
alias grep='grep -i --color'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias jrnl='journalctl -p 3 -xb'
alias colors='for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$"\n"}; done'
# Pacman
alias info='pacman -Q --info'
alias search='pacman -Ss'
alias autoclean='pacman -Qdtq | sudo pacman -Rc -'
alias pac='sudo pacman'
# Dotfile
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
# Git
alias glog='git log --pretty=oneline'
alias clone='git clone'
alias commit='git commit -m'
alias checkout='git checkout'
alias push='git push'
alias pull='git pull'
alias stat='git status'
