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
set textwidth=0
set undodir=~/.local/undodir
set undofile
set updatetime=100
set wrap
set background=dark
set termguicolors

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" Highlight ES6 template strings
" hi link javaScriptTemplateDelim String
" hi link javaScriptTemplateVar Text
" hi link javaScriptTemplateString String
