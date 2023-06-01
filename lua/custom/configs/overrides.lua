local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "cpp",
    "rust",
    "go",
    "typescript",
    "markdown",
    "markdown_inline",
    "python",
  },
  indent = {
    enable = true,
    highlight = {
      enabled = true,
    },
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
  },
}

-- git support in nvimtree
M.nvimtree = {
  update_focused_file = {
    enable = true,
    update_root = true,
    ignore_list = { "*.ts", "tsconfig.json" },
  },
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  git = {
    enable = true,
    ignore = false,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.telescope = {
  extensions_list = { "themes", "terms", "projects" },
}

return M
