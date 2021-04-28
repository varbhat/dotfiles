-- Packer.nvim
-- Bootstrap Packer.nvim if it doesn't exist
local install_path = vim.fn.stdpath('data') ..
                         '/site/pack/packer/opt/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.api.nvim_command(
        '!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    vim.cmd [[:q!]]
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost packer.lua PackerCompile'

-- Packer.nvim Plugins
require('packer').startup({
    function(use)
        -- Let Packer manage itself
        use {'wbthomason/packer.nvim', opt = true}

        -- TeleScope
        use {
            'nvim-telescope/telescope.nvim',
            requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
        }

        -- For statusline
        use {
            'hoob3rt/lualine.nvim',
            requires = {'kyazdani42/nvim-web-devicons', opt = true}
        }

        -- Nvim Tree
        use {
            'kyazdani42/nvim-tree.lua',
            requires = {'kyazdani42/nvim-web-devicons', opt = true}
        }

        -- Bufferline
        use {
            'akinsho/nvim-bufferline.lua',
            requires = {'kyazdani42/nvim-web-devicons', opt = true}
        }

        -- Git Signs
        use {
            'lewis6991/gitsigns.nvim',
            requires = {'nvim-lua/plenary.nvim'},
            config = function() require('gitsigns').setup() end
        }

        --  Safely deletes all open buffers except the current one and NERDTree
        use "numtostr/BufOnly.nvim"

        use {
            "folke/which-key.nvim",
            config = function() require("which-key").setup {} end
        }
        -- For getting indent lines in code
        use "glepnir/indent-guides.nvim"

        -- To format stuff out
        use "mhartington/formatter.nvim"

        -- Startup Time
        use "tweekmonster/startuptime.vim"

        -- For showing the actual color of the hex value
        use "norcalli/nvim-colorizer.lua"

        -- TreeSitter
        use {'nvim-treesitter/nvim-treesitter'}
        -- Comments
        use "terrortylor/nvim-comment"
        -- Themes
        use "tiagovla/tokyodark.nvim"
        -- Spell Check
        use {
            'lewis6991/spellsitter.nvim',
            config = function() require('spellsitter').setup() end
        }
        -- Neovim LSP
        use "neovim/nvim-lspconfig"
        -- Neovim Completion
        use "hrsh7th/nvim-compe"
        -- Snippets
        use "hrsh7th/vim-vsnip"
        use "onsails/lspkind-nvim"
        use "simrat39/symbols-outline.nvim"
        use "glepnir/lspsaga.nvim"
        use "ray-x/lsp_signature.nvim"
        use "kosayoda/nvim-lightbulb"
        use {
            "folke/lsp-trouble.nvim",
            requires = {"kyazdani42/nvim-web-devicons", opt = true},
            config = function() require("trouble").setup {} end
        }

    end,
    config = {display = {open_fn = require"packer.util".float}}
})
