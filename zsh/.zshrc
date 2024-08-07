source "$HOME"/antigen/antigen.zsh
source "$HOME"/.env

antigen init "$HOME"/.antigenrc
source "$HOME"/.aliases

path=(
    /usr/local/go/bin
    ~/go/bin
    ~/.local/bin
    ~/.local/share/JetBrains/Toolbox/scripts
    $path
)
export PATH
export EDITOR="hx"

fpath=(
    "$HOME/.zsh-functions"
    "$HOME/.zsh-completions"
    $fpath
)

autoload "$HOME"/.zsh-functions/*
autoload "$HOME"/.zsh-completions/*

autoload -Uz compinit
compinit
eval "$(zoxide init --cmd cd zsh)"
