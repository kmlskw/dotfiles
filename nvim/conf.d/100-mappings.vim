" Edit $MYVIMRC
nnoremap <silent> <Leader>ev :<C-U>tab drop $MYVIMRC<CR>

" Reload $MYVIMRC
command! ReloadVimrc :source $MYVIMRC

" From terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" Save current buffer
" Set eventignore to "all" and save current buffer
" Usefull for saving without autoformat.
noremap <Leader>w :noautocmd w<Return>

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
inoremap <C-b> <C-o>^

" Preserve indents when moving lines
nnoremap <M-j> :m .+1<Return>==
nnoremap <M-k> :m .-2<Return>==
vnoremap <M-j> :m '>+1<Return>gv=gv
vnoremap <M-k> :m '<-2<Return>gv=gv
" nnoremap <M-j> mz:m+<cr>`z
" nnoremap <M-k> mz:m-2<cr>`z
" vnoremap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
" vnoremap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Go to help under cursor word
nnoremap <Leader>phw :h <C-R>=expand("<cword>")<CR><CR>

" Show invisible characters
set nolist
set listchars=tab:»\ ,eol:↲,nbsp:␣,trail:·,precedes:←,extends:→
nnoremap <silent> <Leader><Leader>l :set list!<Return>

" Toggle line numbers together with sign column
set number
set relativenumber
function! ToggleSignColumn()
  if !exists("b:signcolumn_on") || b:signcolumn_on
    set signcolumn=no
    let b:signcolumn_on=0
  else
    set signcolumn=yes
    let b:signcolumn_on=1
  endif
endfunction
noremap <silent> <Leader><Leader>n :set norelativenumber! number!<CR>:call ToggleSignColumn()<Return>

