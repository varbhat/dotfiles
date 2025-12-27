return {
  { 'mason-org/mason.nvim', enabled = false, opts = {} },

  {
    'mason-org/mason-lspconfig.nvim',
    enabled = false,
    dependencies = { 'neovim/nvim-lspconfig' },
    opts = {},
  },
}
