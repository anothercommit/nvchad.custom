---@type NvPluginSpec[]
local plugins = {
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require "plugins.configs.treesitter"
            require "custom.configs.treesitter"
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "jose-elias-alvarez/null-ls.nvim",
            -- "MunifTanjim/prettier.nvim"
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
            require "custom.configs.null-ls"
            -- require "custom.configs.prettier"
        end,
    },
    {
        "phaazon/hop.nvim",
        cmd = {
            "HopAnywhere",
            "HopWord",
            "HopChar2",
            "HopLineStart",
        },
        config = function()
            require("hop").setup()
        end,
    },
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {}
        end,
    }
    -- To make a plugin not be loaded
    -- {
    --   "NvChad/nvim-colorizer.lua",
    --   enabled = false
    -- },
}

return plugins
