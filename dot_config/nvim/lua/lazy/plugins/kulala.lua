-- Dadbod is a Vim plugin for interacting with databases
return {
  {
    'mistweaverco/kulala.nvim',
    config = function()
      require('kulala').setup()
    end,
  },
}
