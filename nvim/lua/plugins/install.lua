vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")

  use("nvim-lua/plenary.nvim")

  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    requires = { { "nvim-lua/plenary.nvim" } },
  })

  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
    requires = { { "RRethy/nvim-treesitter-endwise" } },
  })

  use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  })

  -- LSP stuff
  use({ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" })
  use({ "neovim/nvim-lspconfig" })
  use({ "hrsh7th/nvim-cmp" })
  use({ "hrsh7th/cmp-nvim-lsp" })
  -- /LSP stuff

  use({
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup()
    end,
  })

  -- use {
  --   'dense-analysis/ale',
  --   config = function()
  --     vim.g.ale_disable_lsp = 1
  --     vim.g.ale_use_neovim_diagnostics_api = 1
  --     vim.g.ale_linters_explicit = 1
  --     vim.g.ale_fix_on_save = 1
  --     vim.g.ale_fixers = {
  --       elixir = {'mix_format'},
  --       eelixir = {'mix_format'}
  --       -- '*' = {'remove_trailing_lines', 'trim_whitespace'},
  --       -- \ 'ruby': ['rubocop'],
  --       -- \ 'javascript': ['prettier', 'eslint'],
  --       -- \ 'json': ['jq'],
  --       -- \ 'css': ['prettier'],
  --       -- \ 'scss': ['prettier'],
  --       -- \ 'ocaml': ['ocamlformat'],
  --       -- \ 'rust': ['rustfmt'],
  --       -- \ 'terraform': ['terraform'],
  --       -- \ 'c': ['clang-format']
  --       -- \
  --     }
  --
  --   end
  -- }

  use("UtkarshVerma/molokai.nvim")
  -- use 'rafi/awesome-vim-colorschemes'
  use("EdenEast/nightfox.nvim")
  -- use 'folke/tokyonight.nvim'
  use("airblade/vim-gitgutter")

  use("henrik/vim-indexed-search")
  use("Yggdroot/indentLine")
  use("tpope/vim-endwise")
  use({
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  })
  use("tomtom/tcomment_vim")
  use("gregsexton/MatchTag")

  use("elixir-editors/vim-elixir")

  use("tpope/vim-fugitive")

  use({
    "tpope/vim-projectionist",
    config = function()
      vim.g.projectionist_heuristics = {

        ["*"] = {
          ["lib/*.ex"] = {
            alternate = "test/{}_test.exs",
          },
          ["test/*_test.exs"] = {
            alternate = "lib/{}.ex",
          },
        },
      }
    end,
  })

  use({
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!:).
    run = "make install_jsregexp",
  })
  use({ "saadparwaiz1/cmp_luasnip" })

  use({ "github/copilot.vim" })

  use({
    "olimorris/codecompanion.nvim",
    config = function()
      require("codecompanion").setup()
    end,
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    dependencies = {
      "ravitemer/mcphub.nvim",
    },
  })

  use({
    "ravitemer/mcphub.nvim",
    build = "npm install -g mcp-hub@latest",
    config = function()
      require("mcphub").setup()
    end,
  })
end)
