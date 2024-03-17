local map = vim.api.nvim_set_keymap

if vim.g.vscode then
  -- VSCode extension
  -- References
  map("n", "gr", "<Cmd>call VSCodeNotify('references-view.findReferences')<CR>", { noremap = true, silent = false })
  map("n", "gR", "<Cmd>call VSCodeNotify('references-view.tree.focus')<CR>", { noremap = true, silent = false })
  -- Which Key by VSpaceCode

  map("n", "<Space>", "<Cmd>call VSCodeNotify('whichkey.show')<CR>", { noremap = true, silent = true })
  map("x", "<Space>", "<Cmd>call VSCodeNotify('whichkey.show')<CR>", { noremap = true, silent = true })
else
  return {}
end
