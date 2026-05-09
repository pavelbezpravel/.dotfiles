unalias la 2>/dev/null
command -v eza >/dev/null \
  && alias la='eza -lAgh --icons=always'

unalias fp 2>/dev/null
command -v fzf >/dev/null && command -v bat >/dev/null \
  && alias fp='fzf -m --preview="bat {}" --bind "enter:become($EDITOR {+})"'
