return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    branch = 'master',
    build = ':TSUpdate',
    opts = {
      ensure_installed = {
        'bash',
        'c',
        'css',
        'diff',
        'go',
        'html',
        'javascript',
        'jsdoc',
        'json',
        'jsonc',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'proto',
        'python',
        'query',
        'regex',
        'rust',
        'svelte',
        'toml',
        'tsx',
        'typescript',
        'vim',
        'vimdoc',
        'xml',
        'yaml',
      },
      -- Autoinstall languages that are not installed
      auto_install = true,
      highlight = {
        enable = true,
        -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
        --  If you are experiencing weird indenting issues, add the language to
        --  the list of additional_vim_regex_highlighting and disabled languages for indent.
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby' } },

      sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)

      autopairs = {
        enable = true,
      },

      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },

      -- auto tag
      autotag = {
        enable = true,
      },
    },
    config = function(_, opts)
      -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup(opts)

      -- There are additional nvim-treesitter modules that you can use to interact
      -- with nvim-treesitter. You should go explore a few and see what interests you:
      --
      --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
      --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
      --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-refactor',
    opts = {},
    dependencies = {
      { 'nvim-treesitter/nvim-treesitter' },
    },
    config = function()
      require('nvim-treesitter.configs').setup {
        refactor = {
          highlight_definitions = {
            enable = true,
            clear_on_cursor_move = true,
          },
        },
      }
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    opts = {
      enable = true,
      max_lines = 7,
    },
    dependencies = {
      { 'nvim-treesitter/nvim-treesitter' },
    },
  },
}
