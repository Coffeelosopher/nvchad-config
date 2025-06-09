-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

--- NEOVIDE CONFIG ---

local o = vim.o
local g = vim.g

-- o.guifont = "FiraCode Nerd Font:h11" -- default font working 
o.guifont = "CaskaydiaMono NFM:h11" -- custom font unstable setup
g.neovide_position_animation_length = 0
g.neovide_cursor_animation_length = .07
g.neovide_cursor_trail_size = 0.5
g.neovide_cursor_animate_in_insert_mode = false
g.neovide_cursor_animate_command_line = false
--g.neovide_scroll_animation_far_lines = 0
--g.neovide_scroll_animation_length = 0.00
o.cursorlineopt ='both' -- to enable cursorline!

-- something something obsidian ui
vim.opt.conceallevel = 1

-- setup ctrl + Shift copy paste
if vim.g.neovide then
  vim.keymap.set('v', '<C-S-c>', '"+y') -- Copy
  vim.keymap.set('n', '<C-S-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<C-S-v>', '"+P') -- Paste visual mode
  vim.keymap.set('i', '<C-S-v>', '<ESC>l"+Pli') -- Paste insert mode
end


--- @type ChadrcConfig

local M = {}
M.base46 = {
	theme = "flex-light",
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

