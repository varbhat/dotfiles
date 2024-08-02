return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          diagnostics = 'nvim_lsp',
        },
      }
    end,
    keys = {
      { '<leader>ep', '<cmd>BufferLineTogglePin<cr>', desc = '[p]in the Buffer' },
    },
  },
}
