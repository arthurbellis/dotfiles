-- Key remaps
local map = vim.keymap.set

-- Only use system clipboard for explicit yanks
map('n', 'y', '"*y', { noremap = true })
map('n', 'yy', '"*yy', { noremap = true })
map('n', 'Y', '"*y$', { noremap = true })

-- easy escape from insert mode
map('i', 'jj', '<Esc>', { noremap = true })

-- LSP shortcuts
map('n', 'grn', vim.lsp.buf.rename)
map('n', 'gra', vim.lsp.buf.code_action)
map('n', 'grr', vim.lsp.buf.references)
map('i', '<C-s>', vim.lsp.buf.signature_help)
map('n', '<leader><leader>=', vim.lsp.buf.format)
map('n', '<leader>x', ':.lua<CR>')
map('n', '<leader><leader>x', ':%lua<CR>')

map('n', '<leader>wn', ':w<CR>:cnext<CR>')

map('n', '<leader>l', ':Lazy<CR>')

map('n', '<leader>d', vim.diagnostic.open_float)
map('n', '<leader>e', vim.lsp.buf.hover)
