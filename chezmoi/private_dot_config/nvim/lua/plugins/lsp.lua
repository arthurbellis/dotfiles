return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason").setup()

      require("mason-tool-installer").setup({
        ensure_installed = {
          "shellcheck",
        },
        run_on_start = true,
      })
    end,
  },

  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
      'williamboman/mason.nvim',
      'neovim/nvim-lspconfig'
    },
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = { 'clangd', 'lua_ls', 'docker_compose_language_service', 'yamlls', 'pylsp' }
      })

      vim.lsp.enable('yamlls')
      vim.lsp.enable('pylsp')
      vim.lsp.enable('clangd')
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('docker_compose_language_service')

      -- This isn't related to mason, but is setup as a local custom lspconfig
      vim.lsp.enable('likec4_ls')
    end
  },

  -- this fixes the neovim-specific issues with lua_ls
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
}
