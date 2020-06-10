" Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

  " Themes
  Plug 'liuchengxu/space-vim-dark'
  Plug 'crusoexia/vim-monokai'
  Plug 'gruvbox-community/gruvbox'
  Plug 'joshdick/onedark.vim'
  Plug 'junegunn/seoul256.vim'

  " Syntax
  Plug 'sheerun/vim-polyglot'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  " UI
  " Plug 'itchyny/lightline.vim'
  Plug 'romainl/vim-cool'
  Plug 'thiagoalessio/rainbow_levels.vim'
  Plug 'luochen1990/rainbow'
  Plug 'gcmt/taboo.vim'
  Plug 'jlanzarotta/bufexplorer'
  Plug 'Yggdroot/indentLine'

  " Utils
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'jremmen/vim-ripgrep'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'juneedahamed/vc.vim'
  Plug 'mbbill/undotree'

  " IDE
  Plug 'neovim/nvim-lsp'
  Plug 'haorenW1025/completion-nvim'
  Plug 'haorenW1025/diagnostic-nvim'
  Plug 'preservim/nerdcommenter'
  Plug 'prettier/vim-prettier'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'liuchengxu/vista.vim'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|   PlugInstall --sync | q
      \| endif
