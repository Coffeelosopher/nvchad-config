require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map Lazy to <leader>l
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- map ctrl + l to copilot suggestion accept
vim.g.copilot_no_tab_map = true -- removed 'tab' copilot suggestion accept
map('i', '<C-e>', 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false})
-- map save to leader + f + s
map("n", "<leader>fs", "<cmd> w <cr>", { desc = "Save" })

-- map leader f p to :cd to nvim config dir and focuses on nvimtree
map("n", "<leader>fp", "<cmd>cd ~/.config/nvim/lua <cr>", { desc = "jump to Neovim Config Directory" })
map("n", "<leader>fP", "<cmd>cd ~/Configuration/nix-config <cr>", { desc = "jump to Nix Config Directory" })

-- Obsidian Mappings
map("n", "<leader>nrf", "<nop>", { desc = "unbind default line number set" })
map("n", "<leader>nrs", "<cmd>ObsidianSearch <cr>", { desc = "Obsidian Search" })
map("n", "<leader>nra", "<cmd>ObsidianDailies<cr>", { desc = "Obsidian Dailies" })
--
map("n", "<leader>nrf", function()
  vim.cmd("cd ~/Vaults/Obsidian/Live-Sync-Notes/")
  vim.cmd("ObsidianQuickSwitch")
end, { desc = "CD to vault & search in notes" })

-- unbind f1 nvim help
map("n", "<F1>", "<nop>", { desc = "unbind F1" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

--set shorter name for keymap function

-- knap mappings
-- F5 processes the document once, and refreshes the view
map({ 'n', 'v', 'i' },'<F5>', function() require("knap").process_once() end)

-- F6 closes the viewer application, and allows settings to be reset
map({ 'n', 'v', 'i' },'<F6>', function() require("knap").close_viewer() end)

-- F7 toggles the auto-processing on and off
map({ 'n', 'v', 'i' },'<F7>', function() require("knap").toggle_autopreviewing() end)

-- F8 invoes a SyncTeX forward search, or similar, where appropriate
map({ 'n', 'v', 'i' },'<F8>', function() require("knap").forward_jump() end)


-- ~/.config/nvim/lua/custom/mappings.lua
local M = {}

M.n = { -- Normal mode mappings
  ["gd"] = { "<cmd>lua require('omnisharp_extended').lsp_definition()<CR>", "OmniSharp Definition" },
  ["<leader>D"] = { "<cmd>lua require('omnisharp_extended').lsp_type_definition()<CR>", "OmniSharp Type Definition" },
  ["gr"] = { "<cmd>lua require('omnisharp_extended').lsp_references()<CR>", "OmniSharp References" },
  ["gi"] = { "<cmd>lua require('omnisharp_extended').lsp_implementation()<CR>", "OmniSharp Implementation" },
}

return M
