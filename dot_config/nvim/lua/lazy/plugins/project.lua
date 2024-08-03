return {
  { 'folke/neoconf.nvim' },
  {
    'folke/persistence.nvim',
    event = 'BufReadPre', -- this will only start session saving when an actual file was opened
    opts = {
      -- add any custom options here
    },
    keys = {
      {
        '<leader>qs',
        function()
          require('persistence').load()
        end,
        desc = '[s]ession load',
      },
      {
        '<leader>qS',
        function()
          require('persistence').select()
        end,
        desc = 'session [S]elect',
      },
      {
        '<leader>ql',
        function()
          require('persistence').load { last = true }
        end,
        desc = 'Load [l]ast session',
      },
      {
        '<leader>qd',
        function()
          require('persistence').stop()
        end,
        desc = '[d] session stop',
      },
    },
  },
  { 'LintaoAmons/cd-project.nvim' },
}
