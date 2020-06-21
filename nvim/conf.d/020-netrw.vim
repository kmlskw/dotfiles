" 0: suppress the banner
let g:netrw_banner=0

" specify initial size of new windows made with
" "o" (see |netrw-o|), "v" (see |netrw-v|),
" |:Hexplore| or |:Vexplore|.  The g:netrw_winsize
" is an integer describing the percentage of the
" current netrw buffer's window to be used for
" the new window.
let g:netrw_winsize=25


" Set the default listing style:
" = 0: thin listing (one file per line)
" = 1: long listing (one file per line with time
"   stamp information and file size)
" = 2: wide listing (multiple files in columns)
" = 3: tree style listin
let g:netrw_liststyle=3

" =0: re-using the same window  (default)
" =1: horizontally splitting the window first
" =2: vertically   splitting the window first
" =3: open file in new tab
" =4: act like "P" (ie. open previous window)
"     Note that |g:netrw_preview| may be used
"     to get vertical splitting instead of
"     horizontal splitting.
let g:netrw_browse_split=0

" control right/left splitting
let g:netrw_altv=1


" The home directory for where bookmarks and
" history are saved (as .netrwbook and
" .netrwhist).
let g:netrw_home= "~/.local/"

" Show current (file) directory
command! ExploreFind let @/=expand("%:t") | execute 'Vexplore' expand("%:h") | normal n
