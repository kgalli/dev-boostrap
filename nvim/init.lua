-- Mapping the leader as early as possible is important
-- as key bindings using leader always use whatever the current
-- leader key is set to
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


-- Install lazy package manager
-- This file can be loaded by calling `lua require('plugins')` from init.vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Install nvim plugins
require("lazy").setup({
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    {
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    },
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
            }
        end
    },
    {
        'nvim-treesitter/nvim-treesitter', run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,

    },
    "theprimeagen/harpoon",
    "mbbill/undotree",
    "tpope/vim-fugitive",
    "nvim-treesitter/nvim-treesitter-context",
    {
        'nvim-lualine/lualine.nvim',
        opts = {
            options = {
                icons_enabled = false,
                theme = 'onedark',
                component_separators = '|',
                section_separators = '',
            },
        },
    },
    {
        {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

        -- LSP Support
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        {'neovim/nvim-lspconfig'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lua'},
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
    },
    -- Autoformat on save
    -- Configured in after/plugins/lsp
    "lukas-reineke/lsp-format.nvim"
})

require("kgalli")
