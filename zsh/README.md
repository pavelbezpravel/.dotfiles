# zsh

## Requirements

- bat
- curl
- eza
- fzf
- git
- helix
- oh-my-zsh
- ripgrep
- starsip
- stow
- zoxide
- zsh

## Installation

### Install required dependencies

See docs for listed tools.

### Install oh-my-zsh

1. Install framework:
```
ZDOTDIR="$HOME/.config/zsh" \
  ZSH="$HOME/.local/share/oh-my-zsh" \
  sh -c "$(curl \
    -fsSL \
    https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    "" \
  --unattended \
  --keep-zshrc
```

2. Install community plugins:
```
git clone \
  https://github.com/zsh-users/zsh-autosuggestions.git \
  $HOME/.local/share/oh-my-zsh/custom/plugins/zsh-autosuggestions && \
  git clone \
    https://github.com/zsh-users/zsh-syntax-highlighting.git \
    $HOME/.local/share/oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```

### Change shell (optional)
```
chsh -s "$(command -v zsh)"
```

### Install package via stow

Run from the root of a repository:
```
stow -t "$HOME" zsh
```
