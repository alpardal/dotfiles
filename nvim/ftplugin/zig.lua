-- vim.keymap.set("n", "<leader>r", function()
vim.map_if_not_mapped("<leader>r", function()
  vim.terminal_run("zig run %")
end)

-- vim.keymap.set("n", "<leader>t", function()
vim.map_if_not_mapped("<leader>t", function()
  vim.terminal_run("zig test %")
end)

vim.map_if_not_mapped("<leader>l", function()
  vim.terminal_run("zig build run")
end)

vim.cmd([[
  set tabstop=4
  set shiftwidth=4
]])
