return require('packer').startup(function() 
   use 'wbthomason/packer.nvim'

   use 'ellisonleao/gruvbox.nvim'
   use 'nvim-lualine/lualine.nvim'
   use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
   }

   use { "akinsho/toggleterm.nvim", tag = 'v2.*'}
end)

