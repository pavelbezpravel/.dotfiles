source $ZDOTDIR/env.zsh
source $ZDOTDIR/path.zsh
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/plugins.zsh

source $ZDOTDIR/fzf.zsh

fpath=(
  "$ZDOTDIR/completions"
  $fpath
)

autoload -Uz compinit
compinit -d $ZSH_COMPDUMP

eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"
