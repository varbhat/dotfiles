return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'catppuccin-mocha'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
    -- opts = {
    --   integrations = {
    --     aerial = true,
    --     alpha = true,
    --     cmp = true,
    --     dashboard = true,
    --     flash = true,
    --     gitsigns = true,
    --     headlines = true,
    --     illuminate = true,
    --     indent_blankline = { enabled = true },
    --     leap = true,
    --     lsp_trouble = true,
    --     mason = true,
    --     markdown = true,
    --     mini = true,
    --     native_lsp = {
    --       enabled = true,
    --       underlines = {
    --         errors = { 'undercurl' },
    --         hints = { 'undercurl' },
    --         warnings = { 'undercurl' },
    --         information = { 'undercurl' },
    --       },
    --     },
    --     navic = { enabled = true, custom_bg = 'lualine' },
    --     neotest = true,
    --     neotree = true,
    --     noice = true,
    --     notify = true,
    --     semantic_tokens = true,
    --     telescope = true,
    --     treesitter = true,
    --     treesitter_context = true,
    --     which_key = true,
    --   },
    -- },
  },
  {
    'rebelot/kanagawa.nvim',
    opts = {
      overrides = function(colors)
        return {
          ['@lsp.type.namespace'] = { fg = '#ff9900' },
        }
      end,
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
