require "nvchad.mappings"

-- add yours here
-- map(<mode>, <keystroke>, <command to run>, {<other lua things, in this case just giving it a description to display>})

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "n", "nzz")
map("n", "N", "Nzz")

-- map("n", "j", "jzz")
-- map("n", "k", "kzz")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
