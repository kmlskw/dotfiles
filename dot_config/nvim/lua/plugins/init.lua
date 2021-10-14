local fn = vim.fn
local cmd = vim.cmd

local plugLoad = fn["functions#PlugLoad"]
local plugBegin = fn["plug#begin"]
local plugEnd = fn["plug#end"]

plugLoad()
plugBegin("~/.config/nvim/plugged")
-- fzf
cmd [[Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }]]
cmd [[Plug 'junegunn/fzf.vim']]

-- vcs
cmd [[Plug 'tpope/vim-fugitive']]

-- appearance
cmd [[Plug 'rakr/vim-one']]
cmd [[Plug 'jacoborus/tender.vim']]
cmd [[Plug 'dracula/vim']]
cmd [[Plug 'crusoexia/vim-monokai']]
plugEnd()
