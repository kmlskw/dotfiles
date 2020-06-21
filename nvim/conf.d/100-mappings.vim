" Edit $MYVIMRC
nnoremap <silent> <Leader>ev :<C-U>tab drop $MYVIMRC<CR>

" Reload $MYVIMRC
command! ReloadVimrc :source $MYVIMRC

" From terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" Save current buffer
noremap <Leader>w :w<Return>

" Resize
nnoremap <Leader>= :vertical resize +10<CR>
nnoremap <Leader>- :vertical resize -10<CR>

" Stop the highlighting
nnoremap <Leader><CR> :noh<CR>
vnoremap <Leader><CR> :noh<CR>

" Reselect the last pasted text with `gp`
nnoremap gp `[v`]

" Spellcheck
map <F6> :setlocal spell! spelllang=en_us<CR>
map <F7> :setlocal spell! spelllang=pl<CR>

" Jump to the start/end of the current line.
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>^

" Preserve indents when moving lines
nnoremap <M-j> :m .+1<Return>==
nnoremap <M-k> :m .-2<Return>==
vnoremap <M-j> :m '>+1<Return>gv=gv
vnoremap <M-k> :m '<-2<Return>gv=gv
" nnoremap <M-j> mz:m+<cr>`z
" nnoremap <M-k> mz:m-2<cr>`z
" vnoremap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
" vnoremap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z


