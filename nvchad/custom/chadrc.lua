-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "gruvbox",
}

local configs = require "custom.plugins.configs"
local plugins = require "custom.plugins"
M.plugins = {
  override = {
    ["nvim-telescope/telescope.nvim"] = configs.telescope, 
  },
  user = plugins,
}

return M
