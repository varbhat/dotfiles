return {
  {
    'stevearc/oil.nvim',
    opts = {
      default_file_explorer = true,
    },
    lazy = false,
    -- Optional dependencies
    -- dependencies = { { 'nvim-mini/mini.icons', opts = {} } },

    dependencies = {
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    }, -- use if prefer nvim-web-devicons
    keys = {
      { '<leader>o', '<cmd>Oil --float<CR>', desc = '[O]il' },
    },
  },
}
