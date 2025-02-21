require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "n", "nzz")
map("n", "N", "Nzz")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
