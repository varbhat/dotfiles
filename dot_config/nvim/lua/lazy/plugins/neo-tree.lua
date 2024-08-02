-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', '<cmd>Neotree toggle left<CR>', desc = 'NeoTree toggle [l]eft' },
    { '<leader>E', '<cmd>Neotree toggle left<cr>', desc = 'Neotr[E]e toggle left' },
    { '<leader>el', '<cmd>Neotree toggle left<cr>', desc = 'Neotree toggle [l]eft' },
    { '<leader>er', '<cmd>Neotree toggle right<cr>', desc = 'Neotree toggle [r]ight' },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    source_selector = {
      winbar = true,
      statusline = false,
    },
  },
}
