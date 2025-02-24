-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
       theme = "tokyonight",
}

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
M.term = {
  float = {
    relative = "editor",
    row = 0.3,
    col = 0.3,
    width = 0.9,
    height = 0.9,
    border = "single",
  },
}

M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
--}
require("gitsigns").setup {
  current_line_blame = true,
}

return M
