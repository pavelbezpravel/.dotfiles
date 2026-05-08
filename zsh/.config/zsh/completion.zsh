fpath=(
  "$ZDOTDIR/completions"
  $fpath
)

autoload -Uz compinit
compinit -d "$ZDOTDIR/cache/zcompdump" -C

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
