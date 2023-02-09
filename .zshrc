# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

CASE_SENSITIVE="true"

plugins=(
    git
    rust
    sudo
    docker
    docker-compose
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

alias cfgit="/usr/bin/git --git-dir=\$HOME/.dotfiles/ --work-tree=\$HOME"
alias ll="ls -lh"
alias la="ls -lAh"
