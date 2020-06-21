" Treat *.tsx as typescript
augroup SyntaxSettings
  autocmd!
  autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END

" Fix highlights at very large files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
