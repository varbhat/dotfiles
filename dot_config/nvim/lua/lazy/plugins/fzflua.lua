return {
  {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    dependencies = {
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    }, -- use if prefer nvim-web-devicons
    config = function()
      -- calling `setup` is optional for customization
      require('fzf-lua').setup {}
    end,
    keys = {
      {
        '<leader>sl',
        '<cmd>FzfLua<cr>',
        desc = 'Fzf Lua',
      },
    },
  },
}
