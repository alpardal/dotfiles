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

vim.keymap.set("n", "[j", function()
  vim.cmd("cnext")
end, {})
vim.keymap.set("n", "[k", function()
  vim.cmd("cprev")
end, {})
vim.keymap.set("n", "[q", function()
  vim.cmd("cclose")
end, {})

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
--
local opts = {}

vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
