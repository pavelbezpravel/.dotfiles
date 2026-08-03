if [[ ! -f "$ZSH_CACHE_DIR/completions/_rg" ]] && command -v rg >/dev/null; then
  mkdir -p "$ZSH_CACHE_DIR/completions"
  rg --generate complete-zsh > "$ZSH_CACHE_DIR/completions/_rg"
  rm "$ZSH_COMPDUMP"
fi

if [[ ! -f "$ZSH_CACHE_DIR/completions/_ykman" ]] && command -v ykman >/dev/null; then
  mkdir -p "$ZSH_CACHE_DIR/completions"
  _YKMAN_COMPLETE=zsh_source ykman > "$ZSH_CACHE_DIR/completions/_ykman"
  rm "$ZSH_COMPDUMP"
fi

fpath=(
  "$ZSH_CACHE_DIR/completions"
  $fpath
)

autoload -Uz compinit
compinit -d "$ZSH_COMPDUMP" -C

_comp_options+=(globdots)

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' file-sort name
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$ZSH_CACHE_DIR"
