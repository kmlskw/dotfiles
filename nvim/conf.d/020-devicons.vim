let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 0
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#292B2E')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#292B2E')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#292B2E')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#292B2E')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#292B2E')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#292B2E')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#292B2E')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#292B2E')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#292B2E')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#292B2E')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#292B2E')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#292B2E')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#292B2E')

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif
