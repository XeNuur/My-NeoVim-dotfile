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
   use 'startup-nvim/startup.nvim'

   --Language Support
   use 'habamax/vim-godot'

   --Help
   use {
       'nvim-telescope/telescope.nvim', tag = '0.1.0',
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

end)

