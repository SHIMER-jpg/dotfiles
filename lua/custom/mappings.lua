---@type MappingsTable
local M = {}

M.ui = {}

M.general = {
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move Lines Down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move Lines Up" },
  },
  x = {
    ["<leader>p"] = { '"+p', "Paste from clipboard" },
    ["<leader>y"] = { '"+y', "Copy to clipboard" },
  },
  n = {
    ["<leader>tt"] = { "<cmd> VS <CR> ", "theme as vscode", opts = { nowait = true } },
    ["<C-q>"] = { ":qa! <CR>", "enter command mode" },
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-c>"] = { "", "copy whole file" },
  },
}

M.telescope = {
  plugin = true,
  n = {
    -- find
    ["<leader>ma"] = { "<cmd> Telescope marks <CR>", "Find Mark" },
    ["<leader>fa"] = { "<cmd> Telescope projects <CR>", "Find Project" },
  },
}

M.undotree = {
  plugin = true,
  n = {
    ["<leader>to"] = { "<cmd> UndotreeToggle <CR>", 'Toggle undotree' }
  }
}

M.copilot = {
  plugin = true,
  i = {
    ["<C-Tab>"] = { "<cmd>copilot#Accept<CR>", "Copilot Accept" }
  }
}

M.diffview = {
  plugin = true,
  n = {
    ["<leader>gc"] = { "<cmd>DiffviewClose<CR>", "Diffview Close" },
    ["<leader>go"] = { "<cmd>DiffviewOpen<CR>", "Diffview Open" },
    ["<leader>gh"] = { "<cmd>DiffviewFocusFiles . <CR>", "Diffview File History" },
  }
}
-- more keybinds!

return M
