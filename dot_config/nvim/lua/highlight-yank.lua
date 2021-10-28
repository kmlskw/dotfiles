local cmd = vim.cmd

cmd 'autocmd TextYankPost * lua vim.highlight.on_yank {on_visual = false, timeout = 40}'
