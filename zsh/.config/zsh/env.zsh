export EDITOR="hx"
export VISUAL="hx"

export ZSH_CACHE_DIR="$HOME/.cache/zsh"
export ZSH_STATE_DIR="$HOME/.local/state/zsh"
export ZSH_COMPDUMP="$ZSH_CACHE_DIR/zcompdump"

export HISTFILE="$ZSH_STATE_DIR/history"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#6C7086,label:#CDD6F4"

export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/ripgreprc"
