-- Configurations
vim.o.termguicolors = true
vim.cmd 'syntax enable'
vim.cmd 'filetype plugin indent on'
vim.g.mapleader = ','
vim.o.clipboard = "unnamedplus"
vim.o.completeopt = "menuone,noinsert"
vim.o.expandtab = true
vim.o.foldmethod = "expr"
vim.api.nvim_command('set foldexpr=nvim_treesitter#foldexpr()')
vim.o.foldlevelstart = 10
vim.o.showcmd = true
vim.o.hidden = true
vim.o.ignorecase = true
vim.o.mouse = "a"
vim.o.pumheight = 15
vim.o.showtabline = 2
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.title = true
vim.o.titlestring = "%<%F%=%l/%L - nvim"
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.showtabline = 2
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.background = "dark"
vim.o.undofile = true
vim.o.updatetime = 300
vim.wo.cursorline = true
vim.wo.number = true
vim.wo.signcolumn = "yes"
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir/"
vim.o.undofile = true
vim.o.incsearch = true

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)
