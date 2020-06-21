" This plugin is enabled by default. Set this variable to 0 to disable it. 
" You can then use :ContextEnable or :ContextToggle to enable it on demand.
let g:context_enabled = 0

" By default, no filetypes will be ignored for the context buffer to appear. 
" If you wish to blacklist a specific filetype, add the name of the filetype to this list.
let g:context_filetype_blacklist = []

" By default we create some mappings to update the context on all Vim commands which scroll the buffer. 
" Set this variable to 0 to disable that. See below on how to customize these mappings if needed.
let g:context_add_mappings = 1