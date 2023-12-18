local args = require 'arg'

local global = {
   mapleader = ",",
}

local options = {
   expandtab   = true,
   shiftwidth  = 4,
   softtabstop = 3,

   wrap = false,
   relativenumber = true,
   --lazyredraw = true,

   background = "dark",
   termguicolors = true,
}

-- no alert about editing file with swap
vim.opt.shortmess:append "A"

for k, v in pairs(options) do
  vim.opt[k] = v
end

for k, v in pairs(global) do
  vim.g[k] = v
end

--Theme
if not args.is_tty then
   vim.cmd([[colorscheme onedark]])
end 

