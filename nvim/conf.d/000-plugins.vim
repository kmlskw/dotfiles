" Auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
  Plug 'alvan/vim-closetag'
  Plug 'AndrewRadev/linediff.vim'
  Plug 'ashisha/image.vim'
  Plug 'blueyed/vim-diminactive'
  Plug 'camspiers/animate.vim'
  Plug 'camspiers/lens.vim'
  Plug 'chrisbra/Colorizer'
  Plug 'crusoexia/vim-monokai'
  Plug 'dracula/vim'
  Plug 'duggiefresh/vim-easydir'
  Plug 'easymotion/vim-easymotion'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'farmergreg/vim-lastplace'
  Plug 'FooSoft/vim-argwrap'
  Plug 'gcmt/taboo.vim'
  Plug 'gruvbox-community/gruvbox'
  Plug 'haorenW1025/completion-nvim'
  Plug 'haorenW1025/diagnostic-nvim'
  Plug 'haorenW1025/floatLf-nvim'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'honza/vim-snippets'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'itchyny/lightline.vim'
  Plug 'jlanzarotta/bufexplorer'
  Plug 'joshdick/onedark.vim'
  Plug 'jremmen/vim-ripgrep'
  Plug 'juneedahamed/vc.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/gv.vim'
  Plug 'junegunn/vim-github-dashboard'
  Plug 'lfv89/vim-interestingwords'
  Plug 'liuchengxu/space-vim-dark'
  Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
  Plug 'liuchengxu/vista.vim'
  Plug 'luochen1990/rainbow'
  Plug 'machakann/vim-highlightedyank'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'mbbill/undotree'
  Plug 'mhinz/vim-signify'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neovim/nvim-lsp'
  Plug 'othree/html5.vim'
  Plug 'othree/yajs.vim'
  Plug 'preservim/nerdcommenter'
  Plug 'preservim/nerdtree'
  Plug 'prettier/vim-prettier'
  Plug 'qpkorr/vim-bufkill'
  Plug 'romainl/vim-cool'
  Plug 'RRethy/vim-illuminate'
  Plug 'ruanyl/vim-gh-line'
  Plug 'ryanoasis/vim-devicons'
  Plug 'sheerun/vim-polyglot'
  Plug 'SirVer/ultisnips'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'thiagoalessio/rainbow_levels.vim'
  Plug 'tpope/vim-apathy'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-projectionist'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'unblevable/quick-scope'
  Plug 'wbthomason/lsp-status.nvim'
  Plug 'wellle/context.vim'
  Plug 'wellle/targets.vim'
  Plug 'will133/vim-dirdiff'
  Plug 'Yggdroot/indentLine'
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|   PlugInstall --sync | q
      \| endif
