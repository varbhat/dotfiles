-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>Q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Open Line Diagnostics
vim.keymap.set('n', '<leader>dd', vim.diagnostic.open_float, { desc = 'Line Diagnostics' })

-- Quit Actions
vim.keymap.set('n', '<leader>qq', '<cmd>q<cr>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>qa', '<cmd>qa<cr>', { desc = 'Quit All' })
vim.keymap.set('n', '<leader>qf', '<cmd>q!<cr>', { desc = 'Force Quit' })
vim.keymap.set('n', '<leader>qF', '<cmd>qa!<cr>', { desc = 'Force Quit All' })
vim.keymap.set('n', '<leader>qw', '<cmd>wq<cr>', { desc = 'Write and Quit' })
vim.keymap.set('n', '<leader>qW', '<cmd>wqa<cr>', { desc = 'Write and Quit All' })

-- Save Action
vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save File' })

-- Resize window using <ctrl> arrow keys
vim.keymap.set('n', '<C-Up>', '<cmd>resize +2<cr>', { desc = 'Increase Window Height' })
vim.keymap.set('n', '<C-Down>', '<cmd>resize -2<cr>', { desc = 'Decrease Window Height' })
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease Window Width' })
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase Window Width' })

-- buffers
vim.keymap.set('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next Buffer' })

-- Edit
vim.keymap.set('n', '<leader>ed', '<cmd>:bd<cr>', { desc = '[d]elete Buffer and Window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('text-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- .http file recognition
vim.filetype.add {
  extension = {
    ['http'] = 'http',
  },
}

-- FormatToggle Command
vim.api.nvim_create_user_command('FormatGlobalToggle', function()
  vim.g.disable_autoformat = not vim.g.disable_autoformat
end, {
  desc = 'Toggle Global autoformat-on-save',
})

vim.keymap.set('n', '<leader>tF', '<cmd>FormatGlobalToggle<cr>', { desc = 'Toggle Global autoformat-on-save' })

vim.api.nvim_create_user_command('FormatBufferToggle', function()
  vim.b.disable_autoformat = not vim.b.disable_autoformat
end, {
  desc = 'Toggle Buffer autoformat-on-save',
})

vim.keymap.set('n', '<leader>tf', '<cmd>FormatBufferToggle<cr>', { desc = 'Toggle Buffer autoformat-on-save' })

-- vim: ts=2 sts=2 sw=2 et
