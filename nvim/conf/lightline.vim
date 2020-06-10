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
      \   'filename': '%n:%t'
      \ },
      \ }
