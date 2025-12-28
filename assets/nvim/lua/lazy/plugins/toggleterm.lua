return {
  'akinsho/nvim-toggleterm.lua',
  config = function()
    local toggleterm = require 'toggleterm'

    toggleterm.setup {
      open_mapping = [[<c-/>]],
      hide_number = true,
      start_in_insert = true,
      direction = 'float', -- vertical | float | tab
    }
  end,
}
