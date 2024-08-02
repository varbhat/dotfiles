return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = 'BufEnter',
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
