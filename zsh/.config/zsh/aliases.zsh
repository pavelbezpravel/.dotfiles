unalias la 2>/dev/null
command -v eza >/dev/null \
  && alias la='eza -lAgh --icons=always'

unalias fp 2>/dev/null
command -v fzf >/dev/null && command -v bat >/dev/null \
  && alias fp='fzf -m --preview="bat {}" --bind "enter:become($EDITOR {+})"'

unalias gco 2>/dev/null
if command -v fzf >/dev/null && command -v git >/dev/null; then
  gco() {
    _fzf_git_each_ref --no-multi | xargs git switch
  }
fi
