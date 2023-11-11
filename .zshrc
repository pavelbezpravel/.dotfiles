source "$HOME"/antigen/antigen.zsh

source "$HOME"/.antigenrc
source "$HOME"/.functions
source "$HOME"/.aliases

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"
export EDITOR="/usr/bin/vim"

fpath+=${ZDOTDIR:-~}/.zsh_functions
fpath+=~/.zfunc
