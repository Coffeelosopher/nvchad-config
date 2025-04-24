-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

--- NEOVIDE CONFIG ---

local o = vim.o
local g = vim.g

--o.guifont = "FiraCode Nerd Font:h11"
o.guifont = "CaskaydiaMono Nerd Font:h11"
g.neovide_position_animation_length = 0
g.neovide_cursor_animation_length = .07
g.neovide_cursor_trail_size = 0.5
g.neovide_cursor_animate_in_insert_mode = false
g.neovide_cursor_animate_command_line = false
--g.neovide_scroll_animation_far_lines = 0
--g.neovide_scroll_animation_length = 0.00
o.cursorlineopt ='both' -- to enable cursorline!

--- @type ChadrcConfig

local M = {}
M.base46 = {
	theme = "flexoki-light",
  transparency = true,

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}
-- start dashboard on startup
M.nvdash = {
  load_on_startup = true,
}
return M

