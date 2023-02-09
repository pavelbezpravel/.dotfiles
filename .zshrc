source "$HOME"/antigen.zsh

antigen use oh-my-zsh

antigen bundle command-not-found
antigen bundle docker
antigen bundle docker-compose
antigen bundle extract
antigen bundle git
antigen bundle rust
antigen bundle sudo

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

antigen apply

alias cfgit="/usr/bin/git --git-dir=\$HOME/.dotfiles/ --work-tree=\$HOME"
alias ll="ls -lh"
alias la="ls -lAh"
