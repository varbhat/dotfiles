-- Use Treesitter based Folding
vim.opt.foldenable = false
vim.opt.foldmethod = "expr" -- "indent"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

-- Enable Title
vim.opt.title = true

-- LSP Settings
vim.g.lazyvim_python_lsp = "basedpyright"
