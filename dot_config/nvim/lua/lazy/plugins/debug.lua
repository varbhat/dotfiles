-- debug.lua
return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'rcarriga/nvim-dap-ui',
      'nvim-neotest/nvim-nio',
      'williamboman/mason.nvim',
      'jay-babu/mason-nvim-dap.nvim',
      'leoluz/nvim-dap-go',
      'marilari88/neotest-vitest',
      'mfussenegger/nvim-dap-python',
    },
    keys = function(_, keys)
      local dap = require 'dap'
      local dapui = require 'dapui'
      return {
        { '<F5>', dap.continue, desc = 'Debug: Start/Continue' },
        { '<F1>', dap.step_into, desc = 'Debug: Step Into' },
        { '<F2>', dap.step_over, desc = 'Debug: Step Over' },
        { '<F3>', dap.step_out, desc = 'Debug: Step Out' },
        { '<leader>b', dap.toggle_breakpoint, desc = 'Debug: Toggle Breakpoint' },
        {
          '<leader>B',
          function()
            dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
          end,
          desc = 'Debug: Set [B]reakpoint',
        },
        { '<F7>', dapui.toggle, desc = 'Debug: See last session result.' },
        unpack(keys),
      }
    end,
    config = function()
      require('mason-nvim-dap').setup {
        automatic_installation = true,
        handlers = {},
        ensure_installed = {
          'delve',
          'jq',
          'codelldb',
        },
      }

      require('dap-go').setup {
        delve = {
          -- On Windows delve must be run attached or it crashes.
          -- See https://github.com/leoluz/nvim-dap-go/blob/main/README.md#configuring
          detached = vim.fn.has 'win32' == 0,
        },
      }
    end,
  },
  {
    'rcarriga/nvim-dap-ui',
    config = function(_, opts)
      -- setup dap config by VsCode launch.json file
      -- require('dap.ext.vscode').load_launchjs()
      local dapui = require 'dapui'
      vim.list_extend(opts, {
        icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
        controls = {
          icons = {
            pause = '⏸',
            play = '▶',
            step_into = '⏎',
            step_over = '⏭',
            step_out = '⏮',
            step_back = 'b',
            run_last = '▶▶',
            terminate = '⏹',
            disconnect = '⏏',
          },
        },
      })
      dapui.setup(opts)
    end,
    keys = {
      {
        '<leader>te',
        function()
          require('dapui').float_element()
        end,
        desc = 'DAP Float [e]lement',
      },
      {
        '<leader>ta',
        function()
          local widgets = require 'dap.ui.widgets'
          widgets.centered_float(widgets.scopes)
        end,
        desc = 'D[a]P Widget',
      },
      {
        '<leader>tz',
        function()
          require('dapui').toggle()
        end,
        desc = '[z]DAP UI Toggle',
      },
    },
  },
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'mrcjkb/rustaceanvim',
      {
        'thenbe/neotest-playwright',
        dependencies = 'nvim-telescope/telescope.nvim',
      },
      {
        'fredrikaverpil/neotest-golang',
        dependencies = {
          {
            'leoluz/nvim-dap-go',
            opts = {},
          },
        },
        branch = 'main',
      },
    },
    keys = {
      { '<leader>t', '', desc = '+test' },
      {
        '<leader>td',
        function()
          require('neotest').run.run { strategy = 'dap' }
        end,
        desc = 'Debug Nearest',
      },
      {
        '<leader>tt',
        function()
          require('neotest').run.run(vim.fn.expand '%')
        end,
        desc = 'Run File',
      },
      {
        '<leader>tT',
        function()
          require('neotest').run.run(vim.uv.cwd())
        end,
        desc = 'Run All Test Files',
      },
      {
        '<leader>tr',
        function()
          require('neotest').run.run()
        end,
        desc = 'Run Nearest',
      },
      {
        '<leader>tl',
        function()
          require('neotest').run.run_last()
        end,
        desc = 'Run Last',
      },
      {
        '<leader>ts',
        function()
          require('neotest').summary.toggle()
        end,
        desc = 'Toggle Summary',
      },
      {
        '<leader>to',
        function()
          require('neotest').output.open { enter = true, auto_close = true }
        end,
        desc = 'Show Output',
      },
      {
        '<leader>tO',
        function()
          require('neotest').output_panel.toggle()
        end,
        desc = 'Toggle Output Panel',
      },
      {
        '<leader>tS',
        function()
          require('neotest').run.stop()
        end,
        desc = 'Stop',
      },
      {
        '<leader>tw',
        function()
          require('neotest').watch.toggle(vim.fn.expand '%')
        end,
        desc = 'Toggle Watch',
      },
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-vitest',
          require 'rustaceanvim.neotest',
          require('neotest-playwright').adapter {
            options = {
              persist_project_selection = true,
              enable_dynamic_test_discovery = true,
            },
          },
          require 'neotest-golang',
          require('dap-python').setup 'python',
        },
      }
    end,
  },
  {
    'Weissle/persistent-breakpoints.nvim',
    config = function()
      require('persistent-breakpoints').setup {
        load_breakpoints_event = { 'BufReadPost' },
      }
    end,
  },
}
