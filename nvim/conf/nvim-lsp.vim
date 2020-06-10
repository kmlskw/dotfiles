lua << END
  local on_attach_vim = function(client)
    require('completion').on_attach(client)
    require('diagnostic').on_attach(client)

    local mapper = function(mode, key, result)
      vim.fn.nvim_buf_set_keymap(0, mode, key, result, {noremap=true, silent=true})
    end

    mapper('n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<CR>')
    mapper('n', '<c-]>', '<cmd>lua vim.lsp.buf.definition()<CR>')
    mapper('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
    mapper('n', 'gD', '<cmd>lua vim.lsp.buf.implementation()<CR>')
    mapper('n', '<c-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
    mapper('n', '1gD', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
    mapper('n', 'gre', '<cmd>lua vim.lsp.buf.references()<CR>')
    mapper('n', 'g0', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
    mapper('n', 'gW', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')

    -- Not sure if this is right
    vim.cmd("setlocal omnifunc=lsp#omnifunc")
  end

  require'nvim_lsp'.tsserver.setup({
    on_attach = on_attach_vim,
  })
END

"
" completion-nvim
"
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

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

