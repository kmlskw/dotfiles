" Selected files in different ways
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \}

" Files (runs $FZF_DEFAULT_COMMAND if defined)
nnoremap <silent> <Leader>pf :Files<CR>
" Open buffers
nnoremap <silent> <Leader>pb :Buffers<CR>
" Tags in the project (ctags -R)
nnoremap <silent> <Leader>pt :Tags<CR>
" Marks
nnoremap <silent> <Leader>pm :Marks<CR>
" v:oldfiles and open buffers
nnoremap <silent> <Leader>ph :History<CR>
" v:oldfiles and open buffers
nnoremap <silent> <Leader>pc :Colors<CR>
