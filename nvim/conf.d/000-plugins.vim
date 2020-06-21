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
  Plug 'itchyny/lightline.vim'
  Plug 'romainl/vim-cool'
  Plug 'thiagoalessio/rainbow_levels.vim'
  Plug 'luochen1990/rainbow'
  Plug 'gcmt/taboo.vim'
  Plug 'jlanzarotta/bufexplorer'
  Plug 'Yggdroot/indentLine'
  Plug 'lfv89/vim-interestingwords'
  " Plug 'camspiers/animate.vim'
  " Plug 'camspiers/lens.vim'
  Plug 'blueyed/vim-diminactive'
  Plug 'chrisbra/Colorizer'
  Plug 'machakann/vim-highlightedyank'
  Plug 'RRethy/vim-illuminate'

  " Utils
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'jremmen/vim-ripgrep'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-unimpaired'
  Plug 'juneedahamed/vc.vim'
  Plug 'mbbill/undotree'
  Plug 'farmergreg/vim-lastplace'
  Plug 'duggiefresh/vim-easydir'
  Plug 'Yggdroot/hiPairs'
  Plug 'tpope/vim-eunuch'
  Plug 'qpkorr/vim-bufkill'
  Plug 'unblevable/quick-scope'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'haorenW1025/floatLf-nvim'
  Plug 'ruanyl/vim-gh-line'
  Plug 'mhinz/vim-signify'
  Plug 'easymotion/vim-easymotion'
  Plug 'junegunn/vim-github-dashboard'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'wellle/targets.vim'
  Plug 'Raimondi/delimitMate'
  Plug 'FooSoft/vim-argwrap'
  Plug 'davinche/godown-vim'
  Plug 'wellle/context.vim'
  Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

  " IDE
  Plug 'neovim/nvim-lsp'
  Plug 'haorenW1025/completion-nvim'
  Plug 'haorenW1025/diagnostic-nvim'
  Plug 'wbthomason/lsp-status.nvim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'prettier/vim-prettier'
  Plug 'liuchengxu/vista.vim'
  Plug 'tpope/vim-commentary'
  Plug 'preservim/nerdcommenter'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|   PlugInstall --sync | q
      \| endif
