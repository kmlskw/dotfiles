let NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeMapActivateNode = "<F3>"
let g:NERDTreeMapPreview = "<F4>"
let g:NERDTreeWinSize = 45
let g:NERDTreeShowHidden = 1

silent! map <F3> :NERDTreeFind<CR>
silent! nmap <Leader>n :NERDTreeToggle<CR>
