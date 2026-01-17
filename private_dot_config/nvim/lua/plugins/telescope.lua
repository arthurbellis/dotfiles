return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
  },
  config = function()
    local telescope = require('telescope')

    telescope.setup({
      extensions = {
        fzf = {
          fuzzy = true,                   -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true,    -- override the file sorter
          case_mode = 'smart_case',       -- or 'ignore_case' or 'respect_case'
        }
      },
      pickers = {
        find_files = { find_command = { 'rg', '--files', '--follow', '--hidden', '--glob', '!**/.git/*' } }
      }
    })

    telescope.load_extension('fzf')

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Grep tree' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help tags' })
    vim.keymap.set('n', '<leader>fG', builtin.git_branches, { desc = 'Git branches' })
    vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Recent files' })
    vim.keymap.set('n', '<leader>fR', builtin.lsp_references, { desc = 'LSP: find references' })

    vim.keymap.set('n', '<leader>fn', function()
      builtin.find_files {
        cwd = vim.fn.stdpath('config')
      }
    end, { desc = 'Find neovim config files' })

    require('which-key').add({ { '<leader>f', group = 'Find (Telescope)' } })
  end
}
