---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "vscode_dark",
  theme_toggle = { "vscode_dark", "vscode_dark" },
  hl_override = highlights.override,
  hl_add = highlights.add,
  nvdash = {
    load_on_startup = true,
  },
  cmp = {
    style = "atom_colored",       -- default/flat_light/flat_dark/atom/atom_colored
    selected_item_bg = "colored", -- colored / simple
  },
  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
