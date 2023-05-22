source "$HOME"/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle bazel
antigen bundle command-not-found
antigen bundle dnf
antigen bundle docker
antigen bundle docker-compose
antigen bundle extract
antigen bundle git
antigen bundle pass
#antigen bundle rust
antigen bundle tmux
antigen bundle sudo

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell

antigen apply

alias cfgit="/usr/bin/git --git-dir=\$HOME/.dotfiles/ --work-tree=\$HOME"
alias ll="ls -lh"
alias la="ls -lAh"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"
export EDITOR="/usr/bin/vim"
fpath+=${ZDOTDIR:-~}/.zsh_functions
