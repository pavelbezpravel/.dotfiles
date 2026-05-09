if [[ ! -f "$ZDOTDIR/completions/_rg" ]] && command -v rg >/dev/null; then
  mkdir -p "$ZDOTDIR/completions"
  rg --generate complete-zsh > "$ZDOTDIR/completions/_rg"
  rm "$ZDOTDIR/cache/zcompdump"
fi

fpath=(
  "$ZDOTDIR/completions"
  $fpath
)

autoload -Uz compinit
compinit -d "$ZDOTDIR/cache/zcompdump" -C

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
