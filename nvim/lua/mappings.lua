-- vim.g.mapleader = " "
--
-- vim.keymap.set("n", "<leader>w", vim.cmd.write)
-- vim.keymap.set("n", "<leader>q", vim.cmd.quit)

local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>o", vim.git_or_find_files, {})
vim.keymap.set("n", "<leader>O", telescope.find_files, {})
vim.keymap.set("n", "<leader>i", function()
  telescope.find_files({ cwd = vim.fn.expand("%:p:h") })
end)
vim.keymap.set("n", "<leader>gf", telescope.live_grep, {})
vim.keymap.set("v", "<leader>gf", telescope.grep_string, {})

vim.keymap.set("n", "<leader>gs", telescope.git_status, {})
vim.keymap.set("n", "<leader>gb", telescope.git_branches, {})
vim.keymap.set("n", "<leader>gt", telescope.git_stash, {})

vim.keymap.set("n", "<leader>h", vim.browse_file_notes)
vim.keymap.set("n", "<leader>H", function()
  telescope.find_files({ cwd = "~/Programming/notes" })
end)
-- vim.keymap.set('n', '<leader>fg', function()
--   telescope.grep_string({ search = vim.fn.input("Grep > ") })
-- end)

vim.keymap.set("n", "<leader>c", vim.run_with, { silent = true })
vim.keymap.set("n", "Q", vim.save_session)
vim.keymap.set("n", "<leader>n", vim.rename_file)

local ls = require("luasnip")

vim.keymap.set({ "i" }, "<C-l>", function()
  ls.jump(1)
end, { silent = true })
vim.keymap.set({ "i" }, "<C-j>", function()
  ls.jump(-1)
end, { silent = true })
-- vim.keymap.set({ "i" }, "<C-K>", function()
--   ls.expand()
-- end, { silent = true })
