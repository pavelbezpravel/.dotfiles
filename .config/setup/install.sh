#!/usr/bin/env bash


setup_zsh() {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
}

setup_font() {
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"
}

gen_completions() {
   source "$HOME/.zsh-functions/gen-completions"
   gen-completions
}

install() {
    cd "$HOME" || exit

    setup_zsh

    git clone --recurse-submodules https://github.com/pavelbezpravel/.dotfiles.git "$HOME"/.dotfiles

    stow --adopt --target="$HOME" --dir="$HOME/.dotfiles" .
    setup_font
    gen_completions
}

install
