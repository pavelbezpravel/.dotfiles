source "$HOME"/antigen/antigen.zsh

source "$HOME"/.antigenrc
source "$HOME"/.aliases

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"
export EDITOR="/usr/bin/vim"

fpath=("$HOME/.functions" $fpath)
fpath=("$HOME/.zcompletions" $fpath)

autoload "$HOME"/.functions/*
