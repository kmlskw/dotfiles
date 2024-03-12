local map = vim.api.nvim_set_keymap

if vim.g.vscode then
  -- VSCode extension
  map("n", "gr", "<Cmd>call VSCodeNotify('references-view.findReferences')<CR>", { noremap = true, silent = false })
  map("n", "gR", "<Cmd>call VSCodeNotify('references-view.tree.focus')<CR>", { noremap = true, silent = false })
else
  return {}
end
