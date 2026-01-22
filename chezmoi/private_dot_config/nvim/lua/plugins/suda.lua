return {
  'lambdalisue/vim-suda',
  config = function()
    vim.keymap.set('c', 'ww', 'SudaWrite', {})
  end
}
