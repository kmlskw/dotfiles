let g:netrw_banner=0
let g:netrw_winsize=25
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_home= "~/.local/"

" Show current (file) directory
command! ExploreFind let @/=expand("%:t") | execute 'Vexplore' expand("%:h") | normal n
