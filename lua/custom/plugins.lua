local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
  },
  -- Override plugin definition options
  {
    "neovim/nvim-lspconfig",
    -- dependencies = {
    --   -- format & linting
    --   {
    --     "jose-elias-alvarez/null-ls.nvim",
    --     config = function(
    --       require "custom.configs.null-ls"
    --     end,
    --   },
    -- },
    lazy = false,
    config = function()
      require("mason-lspconfig").setup()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
      -- require("lspconfig".rust_analyzer.setup {
      --   settings = {
      --     ["rust-analyzer"] = {
      --       checkOnSave = {
      --         allFeatures = true,
      --         overrideCommand = {
      --           "cargo",
      --           "clippy",
      --           "--workspace",      --           
      --           "--message-format=json",
      --           "--all-targets",
      --           "--all-features",
      --         },
      --       },
      --     },
      --   },
      -- }
    end, -- Override to setup mason-lspconfig
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },
  --
  {
    "NvChad/nvterm",
    lazy = false,
    config = function()
      require("nvterm").setup {
        terminals = {
          shell = "cmd.exe /K powershell",
        },
      }
    end,
  },
  {
    "ahmedkhalf/project.nvim",
    lazy = false,
    config = function()
      require("project_nvim").setup {
        show_hidden = true,
      }
    end,
  },
  -- {
  --   "github/copilot.vim",
  --   init = require("core.utils").load_mappings "copilot",
  --   lazy = false,
  -- },
  -- {
  --   "mbbill/undotree",
  --   init = require("core.utils").load_mappings "undotree",
  --   lazy = false,
  -- },
  {
    "sindrets/diffview.nvim",
    init = require("core.utils").load_mappings "diffview",
    lazy = false,
  },
  {
    "prisma/vim-prisma",
    lazy = false,
  },
}
return plugins
