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
          rosewater = '#c4b28a',
          flamingo = '#d9a594',
          pink = '#D27E99',
          mauve = '#c6b6ee',
          red = '#E46876',
          maroon = '#c4746e',
          peach = '#FFA066',
          yellow = '#E6C384',
          green = '#a6e3a1',
          teal = '#5a7785',
          sky = '#9fb5c9',
          sapphire = '#b8b4d0',
          blue = '#7FB4CA',
          lavender = '#8197bf',

          text = '#c5c9c5',
          subtext1 = '#a6a69c',
          subtext0 = '#9e9b93',

          overlay2 = '#8a8980',
          overlay1 = '#8f8b8b',
          overlay0 = '#726e6e',

          surface2 = '#625e5a',
          surface1 = '#393836',
          surface0 = '#282727',

          base = '#0d0c0c',
          mantle = '#1D1C19',
          crust = '#1F1F28',
        },
      },
      integrations = {
        blink_cmp = true,
        flash = true,
        fzf = true,
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
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
