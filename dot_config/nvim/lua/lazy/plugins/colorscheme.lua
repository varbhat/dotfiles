return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      vim.cmd.colorscheme 'catppuccin-macchiato'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
    opts = {
      color_overrides = {
        macchiato = {
          rosewater = '#ea6962',
          flamingo = '#ea6962',
          red = '#ea6962',
          maroon = '#ea6962',
          pink = '#d3869b',
          mauve = '#d3869b',
          peach = '#e78a4e',
          yellow = '#d8a657',
          green = '#a9b665',
          teal = '#89b482',
          sky = '#89b482',
          sapphire = '#89b482',
          blue = '#7daea3',
          lavender = '#7daea3',
          text = '#ebdbb2',
          subtext1 = '#d5c4a1',
          subtext0 = '#bdae93',
          overlay2 = '#a89984',
          overlay1 = '#928374',
          overlay0 = '#595959',
          surface2 = '#4d4d4d',
          surface1 = '#404040',
          surface0 = '#292929',
          base = '#1d2021',
          mantle = '#191b1c',
          crust = '#141617',
        },
      },
      integrations = {
        cmp = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { 'undercurl' },
            hints = { 'undercurl' },
            warnings = { 'undercurl' },
            information = { 'undercurl' },
          },
        },
        neotest = true,
        neotree = true,
        noice = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },
  {
    'metalelf0/jellybeans-nvim',
    dependencies = {
      { 'rktjmp/lush.nvim' },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
