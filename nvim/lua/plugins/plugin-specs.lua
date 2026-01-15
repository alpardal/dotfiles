return {
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("bamboo").setup({
        italics = {
          comments = true,
          -- keywords = true,
          -- functions = true,
          -- strings = true,
          -- variables = false,
        },
      })
      require("bamboo").load()
    end,
  },
  { "nvim-lua/plenary.nvim" },
  -- { "kiyoon/telescope-insert-path.nvim" },
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      pickers = {
        find_files = {
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*", "--no-ignore-exclude" },
        },
      },
    },
    config = function()
      local telescope = require("telescope.builtin")

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
    end,
  },
  -- {
  --   "folke/flash.nvim",
  --   event = "VeryLazy",
  --   ---@type Flash.Config
  --   opts = {},
  --   modes = {
  --     char = {
  --       highlight = { backdrop = false },
  --     },
  --   },
  --   highlight = {
  --     -- show a backdrop with hl FlashBackdrop
  --     backdrop = false,
  --   },
  --   -- stylua: ignore
  --   keys = {
  --     { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
  --     { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
  --     { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
  --     { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
  --     { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  --   },
  -- },
  -- { "RRethy/nvim-treesitter-endwise", lazy = false },
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "c",
        "csv",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
        "elixir",
        "rust",
        "javascript",
        "heex",
        "bash",
        "zig",
        "git_config",
        "gitcommit",
        "json",
        "sql",
        "terraform",
        "yaml",
      },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
      auto_install = false,

      -- List of parsers to ignore installing (or "all")
      -- ignore_install = { "javascript" },

      ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
      -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

      highlight = {
        enable = true,

        -- -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
        -- -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
        -- -- the name of the parser)
        -- -- list of language that will be disabled
        -- disable = { "c", "rust" },
        -- -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
        -- disable = function(lang, buf)
        --   local max_filesize = 100 * 1024 -- 100 KB
        --   local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        --   if ok and stats and stats.size > max_filesize then
        --     return true
        --   end
        -- end,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      autopairs = { enable = true },
      autotag = { enable = true, disable = { "markdown" } },
      -- endwise = { enable = true },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      -- ensure_installed = { "lua_ls", "rust_analyzer", "lexical", "zls" },
      ensure_installed = { "lua_ls", "rust_analyzer", "expert", "zls" },
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
        -- lexical = function()
        --   print("lexical setup 1")
        --   require("lspconfig").lexical.setup({})
        -- end,
        -- lua_ls = function()
        --   return {
        --     settings = {
        --       Lua = {
        --         -- root_dir = vim.fn.getcwd(),
        --         diagnostics = {
        --           globals = { "vim" },
        --         },
        --       },
        --     },
        --   }
        -- end,
        -- biome = function()
        --   -- TODO: not working?
        --   print("biome setup")
        --   -- print("root dir: " + vim.fn.getcwd() + "/assets")
        --
        --   vim.lsp.enable("biome")
        --
        --   vim.lsp.config("biome", {
        --     -- root_dir = vim.fn.getcwd() + "/assets",
        --     root_dir = "assets",
        --     filetypes = { "javascript" },
        --   })
        -- end,
        -- expert = function()
        --   vim.lsp.enable("expert")
        --
        --   print("ENABLING (Mason) EXPERT")
        --
        --   vim.lsp.config("expert", {
        --     cmd = { "/home/andre/.bin/expert --stdio" },
        --     root_markers = { "mix.exs", ".git" },
        --     filetypes = { "elixir", "eelixir", "heex" },
        --   })
        -- end,
      },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable("expert")

      vim.lsp.config("expert", {
        cmd = { "/home/andre/.bin/expert", "--stdio" },
        root_markers = { "mix.exs", ".git" },
        filetypes = { "elixir", "eelixir", "heex" },
      })
      --
      -- -- if not configs.lexical then
      -- -- configs.lexical = {
      -- --   default_config = {
      -- --     filetypes = { "elixir", "eelixir", "heex" },
      -- --     -- cmd = { "~/code/vendor/elixir/lexical/_build/prod/package/lexical/bin/start_lexical.sh" },
      -- --     cmd = { "~/.bin/expert" },
      -- --     root_dir = function(fname)
      -- --       return lspconfig.util.root_pattern("mix.exs", ".git")(fname) or vim.loop.cwd()
      -- --     end,
      -- --     -- optional settings
      -- --     settings = {},
      -- --   },
      -- -- }
      -- -- end
    end,
  },
  { "airblade/vim-gitgutter" },
  -- { "lewis6991/gitsigns.nvim" },
  { "henrik/vim-indexed-search", lazy = false },
  { "Yggdroot/indentLine", lazy = false },
  { "tpope/vim-endwise", lazy = false },
  {
    "windwp/nvim-autopairs",
    lazy = false,
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },
  { "tomtom/tcomment_vim" },
  { "gregsexton/MatchTag", lazy = false },
  { "elixir-editors/vim-elixir" },
  { "tpope/vim-fugitive" },
  {
    "tpope/vim-projectionist",
    lazy = false,
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
  },
  { "https://codeberg.org/FelipeLema/cmp-async-path" },
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        sources = {
          { name = "luasnip" },
          { name = "nvim_lsp" },
          { name = "async_path" },
        },
        snippet = {
          expand = function(args)
            print("cmd setup")
            require("luasnip").lsp_expand(args.body)
            -- -- You need Neovim v0.10 to use vim.snippet
            -- vim.snippet.expand(args.body)
          end,
        },
        window = {
          -- completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          -- ["<C-i>"] = cmp.mapping.confirm({ select = true }),
          -- ["<C-Space>"] = cmp.mapping.complete(),
          ["<up>"] = cmp.mapping.scroll_docs(-4),
          ["<down>"] = cmp.mapping.scroll_docs(4),
          --   ["<C-Space>"] = cmp.mapping.complete(),
          --   ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
      })
    end,
  },
  { "hrsh7th/cmp-nvim-lsp" },
  {
    "L3MON4D3/LuaSnip",
    lazy = false,
    opts = {
      -- follow latest release.
      tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!:).
      run = "make install_jsregexp",
    },
    config = function()
      local ls = require("luasnip")

      -- vim.keymap.set({ "i" }, "<C-l>", function()
      --   ls.jump(1)
      -- end, { silent = true })
      -- vim.keymap.set({ "i" }, "<C-j>", function()
      --   ls.jump(-1)
      -- end, { silent = true })
      vim.keymap.set({ "i" }, "<C-k>", function()
        ls.expand()
      end, { silent = true })
    end,
  },
  { "saadparwaiz1/cmp_luasnip", lazy = false },
  {
    "stevearc/conform.nvim",
    lazy = false,
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    -- keys = {
    --   {
    --     -- Customize or remove this keymap to your liking
    --     "<leader>f",
    --     function()
    --       require("conform").format({ async = true })
    --     end,
    --     mode = "",
    --     desc = "Format buffer",
    --   },
    -- },
    -- This will provide type hinting with LuaLS
    ---@module "conform"
    ---@type conform.setupOpts
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        json = { "jq" },
        elixir = { "mix", lsp_format = "prefer", stop_after_first = true },
        zig = { "zigfmt" },
        -- -- Conform will run multiple formatters sequentially
        -- python = { "isort", "black" },
        -- You can customize some of the format options for the filetype (:help conform.format)
        rust = { "rustfmt", lsp_format = "fallback" },
        -- -- Conform will run the first available formatter
        -- javascript = { "prettierd", "prettier", stop_after_first = true },
        javascript = { "biome" },
      },
      -- Set default options
      default_format_opts = {
        lsp_format = "fallback",
      },
      format_on_save = { timeout_ms = 3000 },
      -- Customize formatters
      formatters = {
        lua = {
          prepend_args = { "--config-path", "~/.editorconfig" },
        },
        -- shfmt = {
        --   prepend_args = { "-i", "2" },
        -- },
      },
    },
    -- init = function()
    --   -- If you want the formatexpr, here is the place to set it
    --   vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
    -- end,
  },
  -- { "github/copilot.vim" },
  -- {
  --   "olimorris/codecompanion.nvim",
  --   config = function()
  --     require("codecompanion").setup({
  --       extensions = {
  --         mcphub = {
  --           callback = "mcphub.extensions.codecompanion",
  --           opts = {
  --             make_vars = true,
  --             make_slash_commands = true,
  --             show_result_in_chat = true,
  --           },
  --         },
  --       },
  --     })
  --   end,
  --   requires = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  --   dependencies = {
  --     "ravitemer/mcphub.nvim",
  --   },
  -- },
  -- {
  --   "ravitemer/mcphub.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --   },
  --   build = "npm install -g mcp-hub@latest", -- Installs `mcp-hub` node binary globally
  --   config = function()
  --     require("mcphub").setup()
  --   end,
  -- },
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  },
}
