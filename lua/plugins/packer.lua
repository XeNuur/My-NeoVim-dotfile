return require('packer').startup(function() 
   --YES
   use 'wbthomason/packer.nvim'

   --themes
   use 'folke/tokyonight.nvim'
   use 'ellisonleao/gruvbox.nvim'

   --Gui
   use 'nvim-tree/nvim-tree.lua'
   use 'nvim-lualine/lualine.nvim'
   use 'romgrk/barbar.nvim'
   use 'startup-nvim/startup.nvim'

   --Other Language Support
   use 'habamax/vim-godot'

   --others
   use {
       'nvim-telescope/telescope.nvim', tag = '0.1.0',
       requires = { {'nvim-lua/plenary.nvim'} }
   }
end)

