source "$HOME"/antigen/antigen.zsh

source "$HOME"/.antigenrc
source "$HOME"/.aliases

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"
export EDITOR="/usr/bin/vim"

fpath=("$HOME/.functions" $fpath)
fpath=("$HOME/.zsh_functions" $fpath)
fpath=("$HOME/.zfunc" $fpath)

autoload $HOME/.functions/*
