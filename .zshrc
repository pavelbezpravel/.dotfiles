source "$HOME"/antigen/antigen.zsh

antigen init "$HOME"/.antigenrc
source "$HOME"/.aliases

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"
export EDITOR="hx"

fpath=("$HOME/.zsh-functions" $fpath)
fpath=("$HOME/.zsh-completions" $fpath)

autoload "$HOME"/.zsh-functions/*
autoload "$HOME"/.zsh-completions/*
