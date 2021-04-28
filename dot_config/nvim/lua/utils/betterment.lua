-- TreeSitter
require("nvim-treesitter.configs").setup {
    ensure_installed = "all",
    highlight = {enable = {enabled = true, use_languagetree = true}},
    autotag = {enable = true}
}

-- NvimTree
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_width_allow_resize = 1

-- Colorizer
require'colorizer'.setup({'html', 'css', 'javascript'}, {
    RGB = true,
    RRGGBB = true,
    RRGGBBAA = true,
    rgb_fn = true,
    hsl_fn = true,
    css = true,
    css_fn = true
})

-- nvim-comment
require('nvim_comment').setup({
    marker_padding = true,
    comment_empty = false,
    line_mapping = "<C-_>",
    operator_mapping = "<C-_>"
})
