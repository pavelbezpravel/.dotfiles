export EDITOR="hx"
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/ripgreprc"

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
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/fzf.zsh

fpath=(
  "$ZDOTDIR/completions"
  $fpath
)

autoload -Uz compinit
compinit -d $ZSH_COMPDUMP

eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"
