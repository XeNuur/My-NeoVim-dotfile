return {
    --Themes
    'ellisonleao/gruvbox.nvim',
    'navarasu/onedark.nvim',

    {
        "folke/zen-mode.nvim",
        config = function()
            require("zen-mode").setup{}
        end
    },

    -- LSP server
    'neovim/nvim-lspconfig',
    'mason-org/mason-lspconfig.nvim',
    'mason-org/mason.nvim',

    -- LSP plugins
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'L3MON4D3/LuaSnip' },
        }
    },
    --syntax for LSP
    'nvim-treesitter/nvim-treesitter',

    --vimwiki
    'vimwiki/vimwiki',

    --terminal
    {'akinsho/toggleterm.nvim', version = "*", config = true},
}
