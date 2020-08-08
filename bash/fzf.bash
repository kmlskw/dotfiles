# FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --ignore-vcs'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
