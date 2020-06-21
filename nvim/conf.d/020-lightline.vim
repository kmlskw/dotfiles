" By the way, -- INSERT -- is unnecessary anymore because the mode information is displayed in the statusline.
" If you want to get rid of it, configure as follows.
set noshowmode

let g:lightline = {
      \ 'active': {
      \ 'colorscheme': 'seoul256',
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \ },
      \ 'component': {
      \   'filename': '%f'
      \ },
      \ }
