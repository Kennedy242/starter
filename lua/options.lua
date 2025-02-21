require "nvchad.options"

-- add yours here!
vim.opt.mouse = "" -- disable mouse
vim.opt.spelllang = "en_us"
vim.opt.spell = true
vim.opt.number = true
vim.opt.relativenumber = true

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Restore cursor position
-- except for git rebase and commit files
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
  pattern = { "*" },
  callback = function(args)
    -- print("Args are: ", args.file)
    if not string.find(args.file, "%.git") then
      vim.api.nvim_exec2('silent! normal! g`"zv', {})
      -- print "Restored cursor position"
    end
  end,
})

-- UFO folding
vim.o.foldcolumn = "1" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
