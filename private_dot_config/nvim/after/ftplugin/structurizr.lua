vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- see :h cino-+
vim.opt.cino = "+0"
vim.bo.commentstring = "# %s"

vim.opt.foldlevel = 2
vim.opt.foldmethod = "syntax"
vim.api.nvim_command('syntax on')
