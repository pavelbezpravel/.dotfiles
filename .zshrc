source "$HOME"/antigen/antigen.zsh

source "$HOME"/.antigenrc
source "$HOME"/.aliases

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"
export EDITOR="/usr/bin/vim"

fpath=("$HOME/.zsh-functions" $fpath)
fpath=("$HOME/.zsh-completions" $fpath)

autoload "$HOME"/.zsh-functions/*
