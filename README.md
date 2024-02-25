# .dotfiles

## Synopsis

Repo contains my personal dotfiles from `"$HOME"` directory.  
It is a "bare" git repo at `"$HOME"/.dotfiles`.  

## Requirements

- git  
- curl  
- wget  

## Basic Installation

```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/pavelbezpravel/.dotfiles/main/.config/setup/install.sh)"
```

## Usage

You can easily manage dotfiles via `cfgit` alias:

```sh
cfgit add .my-awesome-dotfile
cfgit commit -m "upload dotfile"
cfgit push origin main
```
