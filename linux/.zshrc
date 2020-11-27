# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# aliases

alias ll='ls -l'
alias la='ls -la'
alias ..='cd ..'

alias gs='git status'
alias gadd='git add :/'
alias gb='git branch -a'
alias gbdel='function _gbdel(){ git branch -d "$1"; }; _gbdel'
alias gbDel='function _gbDel(){ git branch -D "$1"; }; _gbDel'
alias gc='function _gc(){ git commit -m "$1"; }; _gc'
alias gac='git commit --amend --no-edit'
alias gp='git pull'
alias gpr='git pull --rebase'

alias bb='~/.toolbox/bin/brazil-build'

# exports

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/sources/config-files/linux/scripts

export _GL_SHADER_DISK_CACHE=1
export _GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1
export _GL_SHADER_DISK_PATH=~/.owcache

export CUDA_HOME=/usr/local/cuda
export C_INCLUDE_PATH=${CUDA_HOME}/include
export CPATH=${CUDA_HOME}/include
export LIBRARY_PATH=${CUDA_HOME}/lib64
