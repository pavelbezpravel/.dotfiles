source "$HOME"/antigen/antigen.zsh

source "$HOME"/.antigenrc

cfgit() {
    /usr/bin/git \
        --git-dir="$HOME"/.dotfiles \
        --work-tree="$HOME" \
        "$@"
}

# https://github.com/marp-team/marp-cli
# slides <file.md> --pdf
slides() {
    docker run \
        --rm \
        --init \
        -v "$(readlink -f "$1" | xargs dirname)":/home/marp/app \
        -e MARP_USER="$(id -u):$(id -g)" \
        -e LANG="$LANG" \
        marpteam/marp-cli \
        /home/marp/app/"$(basename "$1")" \
        "$@"
}

otp() {
    ykman oath accounts code "$@"
}

alias ll="ls -lh"
alias la="ls -lAh"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"
export EDITOR="/usr/bin/vim"

fpath+=${ZDOTDIR:-~}/.zsh_functions
fpath+=~/.zfunc
