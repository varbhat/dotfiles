-- Ctrl+s is binded to save file
vim.api.nvim_set_keymap('n', '<C-s>', [[:w<CR>]],
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-s>', [[<Esc>:w<CR>i]],
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<C-s>', [[<Esc>:w<CR>]],
                        {noremap = true, silent = true})

-- Ctrl+w is binded to save and quit
vim.api.nvim_set_keymap('n', '<C-w>', [[:wq<CR>]],
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-w>', [[<Esc>:wq<CR>]],
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<C-w>', [[<Esc>:wq<CR>]],
                        {noremap = true, silent = true})

-- Ctrl+b is binded to quit without saving
vim.api.nvim_set_keymap('n', '<C-b>', [[:q!<CR>]],
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-b>', [[<Esc>:q!<CR>]],
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<C-b>', [[<Esc>:q!<CR>]],
                        {noremap = true, silent = true})

-- Ctrl+v in insert mode pastes
vim.api.nvim_set_keymap('i', '<C-v>', [[<Esc>p<Esc>i]],
                        {noremap = true, silent = true})

-- Function Keys Mapping
vim.api.nvim_set_keymap('', '<F2>', [[<Esc>:NvimTreeToggle<CR>]],
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('', '<F3>', [[<Esc>:LspTroubleToggle<CR>]],
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('', '<F4>', [[<Esc>:SymbolsOutline<CR>]],
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('', '<F5>', [[<Esc>:vnew<CR>]],
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F6>', [[:Lspsaga open_floaterm<CR>]],
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<F6>', [[<C-\><C-n>:Lspsaga close_floaterm<CR>]],
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('', '<F7>', [[:Telescope<CR>]],
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('', '<F8>', [[:BufOnly<CR>]],
                        {noremap = true, silent = true})
