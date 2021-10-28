local fn = vim.fn
local cmd = vim.cmd

local plugLoad = fn["functions#PlugLoad"]
local plugBegin = fn["plug#begin"]
local plugEnd = fn["plug#end"]

plugLoad()
plugBegin("~/.config/nvim/plugged")
cmd [[Plug 'nvim-lua/plenary.nvim']]
cmd [[Plug 'nvim-telescope/telescope.nvim']]
cmd [[Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}]]
cmd [[Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }]]
cmd [[Plug 'junegunn/fzf.vim']]
cmd [[Plug 'tpope/vim-fugitive']]

-- appearance
cmd [[Plug 'rakr/vim-one']]
cmd [[Plug 'jacoborus/tender.vim']]
cmd [[Plug 'dracula/vim']]
cmd [[Plug 'crusoexia/vim-monokai']]
cmd [[Plug 'kyazdani42/nvim-web-devicons']]
plugEnd()
