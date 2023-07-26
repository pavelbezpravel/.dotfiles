source "$HOME"/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle bazel
antigen bundle command-not-found
antigen bundle copybuffer
antigen bundle copyfile
antigen bundle copypath
antigen bundle dnf
antigen bundle docker
antigen bundle extract
antigen bundle git
antigen bundle pass
antigen bundle rust
antigen bundle tmux
antigen bundle sudo

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

antigen apply


alias ll="ls -lh"
alias la="ls -lAh"

cfgit() {
    /usr/bin/git \
        --git-dir="$HOME"/.dotfiles \
        --work-tree="$HOME" \
        "$@"
}

# https://github.com/marp-team/marp-cli
marp-cli() {
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

alias slides="marp-cli" # slides <file.md> --pdf

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"
export EDITOR="/usr/bin/vim"
fpath+=${ZDOTDIR:-~}/.zsh_functions
fpath+=~/.zfunc

