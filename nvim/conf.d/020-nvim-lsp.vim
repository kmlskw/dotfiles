" NOTE: Requires neovim with LSP build in (nvim>=0.5.0)

function! LSPSetup()
lua << EOF
local on_attach_vim = function()
	require'completion'.on_attach()
	require'diagnostic'.on_attach()
	require'on_attach_status'
end

require'nvim_lsp'.gopls.setup{
	on_attach=on_attach_vim;
	settings = {
		gopls = {
			analyses = {
				fillreturns = true,
				undeclaredname = true,
				unusedparams = true,
				nonewvars = true,
			},
			completeUnimported = true,
			usePlaceholders = true
		}
	};
};
require'nvim_lsp'.bashls.setup{on_attach=on_attach_vim};
require'nvim_lsp'.clangd.setup{on_attach=on_attach_vim};
require'nvim_lsp'.cssls.setup{on_attach=on_attach_vim};
require'nvim_lsp'.dockerls.setup{on_attach=on_attach_vim};
require'nvim_lsp'.jsonls.setup{on_attach=on_attach_vim};
require'nvim_lsp'.pyls.setup{on_attach=on_attach_vim};
require'nvim_lsp'.rust_analyzer.setup{on_attach=on_attach_vim};


local lua_server_path = "/home/kamil/Sources/lua-language-server/"
require'nvim_lsp'.sumneko_lua.setup{
    cmd = {lua_server_path .. "bin/Linux/lua-language-server", "-E", lua_server_path .. "main.lua"},
    settings = {
        Lua = {
            diagnostics = {
                globals = {"vim"}
            }
        }
    }
};
require'nvim_lsp'.tsserver.setup{on_attach=on_attach_vim};
require'nvim_lsp'.yamlls.setup{on_attach=on_attach_vim};
EOF
endfunction

function! LSPUpdate()
  LspInstall gopls
  LspInstall bashls
  LspInstall clangd
  LspInstall cssls
  LspInstall dockerls
  LspInstall jsonls
  LspInstall pyls
  LspInstall rust_analyzer
  LspInstall sumneko_lua
  LspInstall tsserver
endfunction

call LSPSetup()

autocmd Filetype \
			\go,
			\bash,
			\c,
			\cpp,
			\objcpp,
			\sh,
			\objc,
			\css,
			\scss,
			\less,
			\vim,
			\javascript,
			\javascriptreact,
			\javascript.jsx,
			\typescript,
			\typescriptreact,
			\typescript.tsx,
			\lua,
			\python,
			\json,
			\rust,
			\dockerfile,
			\Dockerfile,
			\yaml,
			\ setlocal omnifunc=v:lua.vim.lsp.omnifunc

"autocmd BufWritePre,FileWritePre *.go :call LSPGoImportsReload()

autocmd FileType go nnoremap <silent> gI    <cmd>call LSPGoImportsReload()<CR>
autocmd BufEnter * lua require'completion'.on_attach()


nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gF    <cmd>lua vim.lsp.buf.formatting()<CR>

function! LSPHover()
lua << EOF
local util = require 'vim.lsp.util'
local params = util.make_position_params()
vim.lsp.buf.hover()
EOF
endfunction

function! LSPRename()
	let s:newName = input('Enter new name: ', expand('<cword>'))
	echom "s:newName = " . s:newName
	lua vim.lsp.buf.rename(s:newName)
endfunction

function! LSPGoImportsReload()
	" vim.lsp.buf.formatting()
lua << EOF
	client = vim.lsp.buf_get_clients(0)
	vim.lsp.stop_client(vim.lsp.buf_get_clients(0))
EOF
	sleep 1
	GoFmt
	edit
endfunction

"
" completion-nvim
"
let g:completion_enable_in_comment = 1
let g:completion_enable_fuzzy_match = 1
let g:completion_enable_snippet = 'UltiSnips'

" Use <Tab> and <S-Tab> to navigate through popup menu
"inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Auto close popup menu when finish completion
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" By default auto popup is enabled
let g:completion_enable_auto_popup = 1

" 
" diagnostic-nvim
"
let g:diagnostic_enable_virtual_text = 0
let g:diagnostic_virtual_text_prefix = ' '
let g:diagnostic_trimmed_virtual_text = '20'
let g:space_before_virtual_text = 5
let g:diagnostic_show_sign = 0
let g:diagnostic_auto_popup_while_jump = 0
let g:diagnostic_insert_delay = 1

