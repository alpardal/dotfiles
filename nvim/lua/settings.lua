vim.cmd([[
  set undodir=~/.nvim_undo
  set nohidden
]]);
-- set rnu

-- vim.cmd("colorscheme nightfox");
-- vim.cmd("colorscheme bamboo");
-- vim.cmd("colorscheme molokai");
-- vim.cmd("colorscheme terafox");
-- vim.cmd("colorscheme duskfox");

(function(_border)
  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = _border,
  })

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = _border,
  })
  vim.diagnostic.config({
    float = { border = _border },
  })
end)("single")

-- vim.lsp.inlay_hints.enable(true)

vim.diagnostic.config({
  -- default config
  virtual_lines = false,
  -- Alternatively, customize specific options
  -- virtual_lines = {
  --  -- Only show virtual line diagnostics for the current cursor line
  --  current_line = true,
  -- },
})
