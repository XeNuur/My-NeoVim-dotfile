return require('packer').startup(function() 
   --YES
   use 'wbthomason/packer.nvim'

   --Themes
   use 'folke/tokyonight.nvim'
   use 'ellisonleao/gruvbox.nvim'
   use 'dylanaraps/wal.vim'

   --Gui
   use 'nvim-tree/nvim-tree.lua'
   use 'nvim-lualine/lualine.nvim'
   use 'romgrk/barbar.nvim'
   use {
     "folke/zen-mode.nvim",
     config = function()
       require("zen-mode").setup{}
     end
   }
   --Language Support
   use 'habamax/vim-godot'

   --Help
   use {
       'nvim-telescope/telescope.nvim',
       requires = { {'nvim-lua/plenary.nvim'} }
   }
   use {
     'phaazon/hop.nvim',
     branch = 'v2', -- optional but strongly recommended
     config = function()
       -- you can configure Hop the way you like here; see :h hop-config
       require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
     end
   }

   -- LSP server
   use 'neovim/nvim-lspconfig'
   use 'williamboman/mason-lspconfig.nvim'
   use 'williamboman/mason.nvim'

   -- LSP plugins
   use {
      'hrsh7th/nvim-cmp',
      requires = {
          { 'hrsh7th/cmp-buffer' },
          { 'hrsh7th/cmp-nvim-lsp' },
          { 'saadparwaiz1/cmp_luasnip' },
          { 'L3MON4D3/LuaSnip' },
      }
   }

   --syntax
   use 'nvim-treesitter/nvim-treesitter'

   --debug 
   use 'dstein64/vim-startuptime'
end)
