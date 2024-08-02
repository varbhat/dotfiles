vim.api.nvim_set_keymap('n', '<C-k>', ":lua require('kulala').jump_prev()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ":lua require('kulala').jump_next()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ":lua require('kulala').run()<CR>", { noremap = true, silent = true })
