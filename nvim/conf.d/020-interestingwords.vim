" The plugin comes with those default mapping, but you can change it as you like:
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>

nnoremap <silent> n :call WordNavigation('forward')<cr>
nnoremap <silent> N :call WordNavigation('backward')<cr>

" To configure the colors for a GUI, add this to your .vimrc:
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']

" And for a terminal:
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']

" Also, if you want to randomise the colors (applied to each new buffer), add this to your .vimrc:
 let g:interestingWordsRandomiseColors = 1
