#!/usr/bin/env sh

cd "$HOME" || exit
git clone --bare https://github.com/pavelbezpravel/.dotfiles.git "$HOME"/.dotfiles

cfgit() {
    /usr/bin/git --git-dir="$HOME"/.dotfiles/ --work-tree="$HOME" "$@"
}

cfgit checkout

if [ $? = 0 ]; then
    echo "Checked out dotfiles.";
else
    echo "Backing up pre-existing dotfiles.";
    mkdir -p "$HOME"/.dotfiles_backup
    cfgit checkout 2>&1 | grep -E "\s+\." | awk '{print $1}' | xargs -I{} mv {} "$HOME"/.dotfiles_backup/{}
fi;

cfgit checkout
cfgit config --local status.showUntrackedFiles no

