" You can configure what file types to ignore by setting g:lastplace_ignore in your vimrc. 
" This is a comma separated list. By default it is set to:
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"

" You can configure buffer types to ignore by setting g:lastplace_ignore_buftype in your vimrc. 
" This is a comma separated list. By default it is set to:
let g:lastplace_ignore_buftype = "quickfix,nofile,help"

" Closed folds are automatically opened when jumping to the last edit position. 
" If you do not like this behavior you can disable it by putting this in your vimrc
" let g:lastplace_open_folds = 0