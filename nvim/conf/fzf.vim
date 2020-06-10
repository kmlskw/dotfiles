let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \}
let $FZF_DEFAULT_COMMAND="rg --files --hidden"
nnoremap <C-p> :FZF<CR>
