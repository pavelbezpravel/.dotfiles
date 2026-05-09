if [[ ! -f "$ZSH_CACHE_DIR/completions/_rg" ]] && command -v rg >/dev/null; then
  mkdir -p "$ZSH_CACHE_DIR/completions"
  rg --generate complete-zsh > "$ZSH_CACHE/completions/_rg"
  rm "$ZSH_COMPDUMP"
fi

fpath=(
  "$ZSH_CACHE_DIR/completions"
  $fpath
)

autoload -Uz compinit
compinit -d "$ZSH_COMPDUMP" -C

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
