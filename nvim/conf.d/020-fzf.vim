" Customizable extra key bindings for opening selected files in different ways
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \}

" fzf will use find command (or `$FZF_DEFAULT_COMMAND` if defined) to list the files under the current directory      
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

nnoremap <C-p> :FZF<CR>
