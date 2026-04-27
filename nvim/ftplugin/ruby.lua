vim.map_if_not_mapped("<leader>l", function()
  vim.terminal_run("ruby")
end)
