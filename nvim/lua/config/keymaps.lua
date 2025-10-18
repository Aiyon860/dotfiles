local map = vim.keymap.set

map("v", "<", "<gv", { desc = "Indent left and stay in visual mode" })
map("v", ">", ">gv", { desc = "Indent right and stay in visual mode" })

-- pressing gl again after the floating window will redirect you to the diagnostics buffer
map("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "Open diagnostics in floating window" })
