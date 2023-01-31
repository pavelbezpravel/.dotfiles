# .dotfiles

# Synopsis

Repo contains dotfiles from `$HOME` directory and configs from `$HOME/.config` directory.  
I create a "bare" git repo at `$HOME/.dotfiles`:

```sh
git init --bare "$HOME"/.dotfiles
```

Managing files require alias. Put it in your `.bashrc` or `.zshrc` file:

```sh
alias cfgit="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
```

We don't want to show **all** untracked files from `$HOME` directory, so, let's fix it:

```sh
cfgit config --local status.showUntrackedFiles no
```

You can install dotfiles via command below:

```sh
curl -Lks https://raw.githubusercontent.com/pavelbezpravel/.dotfiles/main/.config/setup/install.sh | /usr/bin/env sh
```

# Usage

You can easily manage dotfiles via `cfgit` alias:

```sh
cfgit add ~/.config
cfgit commit -m "upload .config directory"
cfgit push origin main
```

