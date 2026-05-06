export EDITOR="hx"

plugins=(
  copybuffer
  copyfile
  copypath
  dnf
  docker
  git
  httpie
  pass
  sudo
  tmux
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $HOME/.oh-my-zsh/oh-my-zsh.sh
source $HOME/.zsh/aliases.zsh

fpath=(
  "$HOME/.zsh/completions"
  $fpath
)

autoload -Uz compinit
compinit -d $ZSH_COMPDUMP

eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"

source <(fzf --zsh)
