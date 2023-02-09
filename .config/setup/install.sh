#!/usr/bin/env sh

cfgit() {
    /usr/bin/git --git-dir="$HOME"/.dotfiles/ --work-tree="$HOME" "$@"
}

install_zsh() {
    if [ "$(which zsh)" = 0 ]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    fi
}

install() {
    cd "$HOME" || exit

    install_zsh

    git clone --bare https://github.com/pavelbezpravel/.dotfiles.git "$HOME"/.dotfiles

    if [ "$(cfgit checkout)" = 0 ]; then
        echo "Checked out dotfiles."
    else
        echo "Backing up pre-existing dotfiles."
        mkdir -p "$HOME"/.dotfiles_backup
        cfgit checkout 2>&1 | grep -E "\s+\." | awk '{print $1}' | xargs -I{} mv {} "$HOME"/.dotfiles_backup/{}
    fi

    cfgit checkout
    cfgit config --local status.showUntrackedFiles no
}

install
