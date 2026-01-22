return {
  'nvim-treesitter/nvim-treesitter',
  tag = 'v0.10.0',
  build = ':TSUpdate',
  config = function()
    local configs = require('nvim-treesitter.configs')

    configs.setup({
      ensure_installed = {
        'c',
        'elixir',
        'heex',
        'html',
        'javascript',
        'lua',
        'query',
        'sql',
        'vim',
        'vimdoc',
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
