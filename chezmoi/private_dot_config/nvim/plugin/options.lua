-- better line numbers:
vim.opt.number = true
vim.opt.relativenumber = true

-- don't let the mouse move the cursor around
vim.opt.mouse = ''

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- highlight the current line
vim.opt.cursorline = true
-- keep at least 20 lines above or below the current line
vim.opt.scrolloff = 20

-- adds extra space on the left, for gitsigns and LSPs
vim.opt.signcolumn = 'yes'

-- responsable tab defaults
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- default splits to bottom and right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- scroll to the right to see long lines
vim.opt.wrap = false

-- disable some warnings
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

vim.opt.inccommand = 'split'
