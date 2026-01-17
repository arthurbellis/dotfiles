return {
  {
    'NeogitOrg/neogit',
    event = 'VeryLazy',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
    },
    config = function()
      require('neogit').setup()
      vim.keymap.set('n', '<leader>g', ':Neogit<cr>', { desc = 'Neogit' })
    end
  },
  {
    'sindrets/diffview.nvim',
    opts = {
    }
  },
  {
    'lewis6991/gitsigns.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function _map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
        end

        -- Navigation
        _map('n', ']h', gs.next_hunk, 'Next Hunk')
        _map('n', '[h', gs.prev_hunk, 'Prev Hunk')

        -- Actions
        _map('n', '<leader>hs', gs.stage_hunk, 'Stage hunk')
        _map('n', '<leader>hr', gs.reset_hunk, 'Reset hunk')
        _map('v', '<leader>hs', function()
          gs.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
        end, 'Stage hunk')
        _map('v', '<leader>hr', function()
          gs.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
        end, 'Reset hunk')

        _map('n', '<leader>hS', gs.stage_buffer, 'Stage buffer')
        _map('n', '<leader>hR', gs.reset_buffer, 'Reset buffer')

        _map('n', '<leader>hu', gs.undo_stage_hunk, 'Undo stage hunk')

        _map('n', '<leader>hp', gs.preview_hunk, 'Preview hunk')

        _map('n', '<leader>hb', function()
          gs.blame_line({ full = true })
        end, 'Blame line')
        _map('n', '<leader>hB', gs.toggle_current_line_blame, 'Toggle line blame')

        -- _map('n', '<leader>hd', gs.diffthis, 'Diff this')
        _map('n', '<leader>hD', function()
          gs.diffthis('~')
        end, 'Diff this ~')

        -- Weird hack to make sure we can register the group for git signs
        require('which-key').add({
          { '<leader>h', group = 'gitsigns' },
        })


        -- Text object
        _map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', 'Gitsigns select hunk')
      end,
    },
  },
}
