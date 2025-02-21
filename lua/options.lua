require "nvchad.options"

-- add yours here!
vim.opt.mouse = "" -- disable mouse

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
