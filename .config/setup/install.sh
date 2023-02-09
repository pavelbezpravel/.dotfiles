#!/usr/bin/env sh

git clone --bare https://github.com/pavelbezpravel/.dotfiles.git "$HOME"/.dotfiles

cfgit() {
    /usr/bin/git --git-dir="$HOME"/.dotfiles/ --work-tree="$HOME"
}

mkdir -p .dotfiles-backup
cfgit checkout

if [ $? = 0 ]; then
    echo "Checked out dotfiles.";
else
    echo "Backing up pre-existing dotfiles.";
    cfgit checkout 2>&1 | grep -E "\s+\." | awk 'print $1' | xargs -I{} mv {} .dotfiles-backup/{}
fi;

cfgit checkout
cfgit config --local status.showUntrackedFiles no

