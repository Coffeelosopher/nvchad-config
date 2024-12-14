require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map Lazy to <leader>l
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- map ctrl + l to copilot suggestion accept
map('i', '<C-l>', 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false})

-- map save to leader + f + s
map("n", "<leader>fs", "<cmd> w <cr>", { desc = "Save" })

-- map leader f p to :cd to nvim config dir and focuses on nvimtree
map("n", "<leader>fp", "<cmd>cd ~/Appdata/Local/nvim/<cr><cmd>NvimTreeFocus<cr>", { desc = "jump to Config Directory" })

-- unbind f1 nvim help
map("n", "<F1>", "<nop>", { desc = "unbind F1" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
