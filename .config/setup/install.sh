#!/usr/bin/env sh

cfgit() {
    /usr/bin/git --git-dir="$HOME"/.dotfiles/ --work-tree="$HOME" "$@"
}

setup_zsh() {
    if [ "$(which zsh)" = 0 ]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    fi
}

setup_vim() {
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

setup_keychron() {
    sh -c ". ""$HOME""/.config/setup/keychron.sh"
}

install() {
    cd "$HOME" || exit

    setup_zsh

    git clone --bare --recurse-submodules https://github.com/pavelbezpravel/.dotfiles.git "$HOME"/.dotfiles

    if [ "$(cfgit checkout)" = 0 ]; then
        echo "Checked out dotfiles."
    else
        echo "Backing up pre-existing dotfiles."
        mkdir -p "$HOME"/.dotfiles_backup
        cfgit checkout 2>&1 | grep -E "\s+\." | awk '{print $1}' | xargs -I{} mv {} "$HOME"/.dotfiles_backup/{}
    fi

    cfgit checkout
    cfgit config --local status.showUntrackedFiles no

    setup_keychron
    setup_vim
}

install
