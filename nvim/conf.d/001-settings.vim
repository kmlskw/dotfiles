filetype plugin on
filetype indent on

let mapleader = " "

syntax on

set autoindent
set cmdheight=2
set cindent
set colorcolumn=0
set cursorline
set clipboard=unnamedplus
set encoding=utf-8
set expandtab
set hidden
set hlsearch
set ignorecase
set laststatus=2
set linebreak
set mouse=a
set nobackup
set noswapfile
set nowritebackup
set nrformats=
set scrolloff=0
set shiftwidth=2
set showmatch
set signcolumn=yes
set smartcase
set smartindent
set smarttab
set shortmess+=c
set softtabstop=2
set splitbelow
set splitright
set statusline=%-10.3n
set tabstop=2
set textwidth=80
set undodir=~/.local/undodir
set undofile
set updatetime=100
set wrap
set background=dark
set termguicolors

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" Show invisible characters
set nolist
set listchars=tab:»\ ,eol:↲,nbsp:␣,trail:·,precedes:←,extends:→
nnoremap <Leader>l :set list!<Return>

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
noremap <Leader><Leader>n :set norelativenumber! number!<CR>:call ToggleSignColumn()<Return>
