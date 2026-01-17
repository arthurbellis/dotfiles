return {

  { 'chrismaher/vim-lookml' },

  {
    'magal1337/dataform.nvim',
    dependencies = { 'rcarriga/nvim-notify', }
  },

  -- for dataform sqlx files
  {
    'mfussenegger/nvim-lint',
    config = function()
      require('lint').linters_by_ft = {
        sqlx = { 'sqlfluff' }
      }

      vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
        callback = function()
          require('lint').try_lint()
        end,
      })
    end
  },

}
