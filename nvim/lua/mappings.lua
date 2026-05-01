-- vim.g.mapleader = " "
--
-- vim.keymap.set("n", "<leader>w", vim.cmd.write)
-- vim.keymap.set("n", "<leader>q", vim.cmd.quit)

local function navigationMappings(telescope)
  vim.keymap.set("n", "<leader>gd", function()
    telescope.find_files({ cwd = "~/dotfiles/nvim" })
  end, {})
  vim.keymap.set("n", "<leader>gD", function()
    telescope.find_files({ cwd = "~/dotfiles/" })
  end, {})

  vim.keymap.set("n", "<leader>o", vim.git_or_find_files, {})
  vim.keymap.set("n", "<leader>O", telescope.find_files, {})
  vim.keymap.set("n", "<leader>i", function()
    telescope.find_files({ cwd = vim.fn.expand("%:p:h"), no_ignore = true })
  end)
  vim.keymap.set("n", "<leader>gb", telescope.buffers, {})
  vim.keymap.set("n", "<leader>gf", telescope.live_grep, {})
  vim.keymap.set("v", "<leader>gf", telescope.grep_string, {})
  vim.keymap.set("n", "<leader>gk", telescope.marks, {})
  vim.keymap.set("n", "<leader>gg", telescope.registers, {})
  -- vim.keymap.set("n", "<leader>ge", telescope.lsp_references, {})

  vim.keymap.set("n", "<leader>gh", telescope.help_tags, {})
  vim.keymap.set("n", "<leader>gq", telescope.quickfix, {})
  vim.keymap.set("n", "<leader>gm", telescope.man_pages, {})
  vim.keymap.set("n", "<leader>gu", telescope.resume, {})
  -- vim.keymap.set("n", "<leader>gl", telescope.treesitter, {})

  vim.keymap.set("n", "<leader>gs", telescope.git_status, {})
  vim.keymap.set("n", "<leader>gr", telescope.git_branches, {})
  vim.keymap.set("n", "<leader>gt", telescope.git_stash, {})

  vim.keymap.set("n", "<leader>h", vim.browse_file_notes)
  vim.keymap.set("n", "<leader>H", function()
    telescope.find_files({ cwd = "~/Programming/notes", follow = true })
  end)
  -- vim.keymap.set('n', '<leader>fg', function()
  --   telescope.grep_string({ search = vim.fn.input("Grep > ") })
  -- end)

  vim.keymap.set("n", "gD", telescope.lsp_definitions, {})
end

local function lspMappings()
  local opts = {}

  vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
  vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
  -- vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
  vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
  vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
  vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
  vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
  vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
  vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
  vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
  vim.keymap.set("v", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
  vim.keymap.set("n", "ge", vim.diagnostic.open_float, { noremap = true, silent = true })
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })

  vim.keymap.set("n", "<leader>z", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
  end, { desc = "Toggle LSP Inlay Hints" })
end

local function gitMappings(gitsigns)
  vim.keymap.set("n", "ghp", gitsigns.preview_hunk)
  vim.keymap.set("n", "ghi", gitsigns.preview_hunk_inline)
  vim.keymap.set("n", "ghs", gitsigns.stage_hunk)
  vim.keymap.set("n", "ghu", gitsigns.reset_hunk)

  vim.keymap.set("n", "[c", function()
    gitsigns.nav_hunk("prev")
  end)

  vim.keymap.set("n", "]c", function()
    gitsigns.nav_hunk("next")
  end)
end

local function snippetMappings(luasnip)
  -- vim.keymap.set({ "i" }, "<C-l>", function()
  --   ls.jump(1)
  -- end, { silent = true })
  -- vim.keymap.set({ "i" }, "<C-j>", function()
  --   ls.jump(-1)
  -- end, { silent = true })
  vim.keymap.set({ "i" }, "<C-k>", function()
    luasnip.expand()
  end, { silent = true })
end

function vim.initKeymaps()
  vim.keymap.set("n", "<leader>q", vim.quit)

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

  lspMappings()
  navigationMappings(require("telescope.builtin"))
  gitMappings(require("gitsigns"))
  snippetMappings(require("luasnip"))
end
