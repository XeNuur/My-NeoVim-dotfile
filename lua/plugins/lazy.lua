--Install lazy.nvim if not installed
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

local pm = require('lazy').setup({
   --Themes
   'ellisonleao/gruvbox.nvim',
   'navarasu/onedark.nvim',

   --Gui
   'nvim-tree/nvim-tree.lua',
   'nvim-lualine/lualine.nvim',
   {
      'romgrk/barbar.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' }
   },

    {
        'yamatsum/nvim-cursorline',

        config = function ()
            require('nvim-cursorline').setup {
             cursorline = {
               enable = true,
               timeout = 1000,
               number = false,
             },
             cursorword = {
               enable = true,
               min_length = 3,
               hl = { underline = true },
             }
           }
        end
    },

   {
     "folke/zen-mode.nvim",
     config = function()
       require("zen-mode").setup{}
     end
   },
   --Language Support
   'habamax/vim-godot',

   --Help
   {
       'nvim-telescope/telescope.nvim',
       dependencies = { {'nvim-lua/plenary.nvim'} }
   },
   {
      'ggandor/leap.nvim',
      config = function()
         require('leap').add_default_mappings()
      end
   },

   -- LSP server
   'neovim/nvim-lspconfig',
   'williamboman/mason-lspconfig.nvim',
   'williamboman/mason.nvim',

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
  {'akinsho/toggleterm.nvim', version = "*", config = true}
})
return pm

