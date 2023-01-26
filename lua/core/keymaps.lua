local opts = { noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap
local function keymap_multimode(func, modes)
   for _, it in ipairs(modes) do
      func(it)
   end
end

-- Help me
keymap('n', '<c-f>', '<cmd>Telescope keymaps<cr>', opts)

-- Faster saving:
keymap('n', '<leader>w', '<cmd>w!<cr>', opts)
keymap('n', '<leader>W', '<cmd>wa!<cr>', opts)

-- Window navigation:
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)

-- Press jk fast to exit insert and other modes:
keymap_multimode(function (md)
   keymap(md, "jk", "<ESC>", opts)
   keymap(md, "jk", "<ESC>", opts)
end, {'i', 'v'})

-- Tab navigation:
keymap('n', '<A-T>', "<Cmd>BufferMovePrevious<CR>", opts)
keymap('n', '<A-Y>', "<Cmd>BufferMoveNext<CR>", opts)

keymap('n', '<A-t>', "<Cmd>BufferPrevious<CR>", opts)
keymap('n', '<A-y>', "<Cmd>BufferNext<CR>", opts)

keymap('n', "<A-n>", "<Cmd>tabnew<cr>", opts)
keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

keymap('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
keymap('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
keymap('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
keymap('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
keymap('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
keymap('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
keymap('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
keymap('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
keymap('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
keymap('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

-- Clear the searches faster
keymap('n', "<c-_>", "<Cmd>noh<cr>", opts)

-- Fancy way to search for files and more...
keymap('n', "<leader>e", "<Cmd>Telescope find_files<cr>", opts)
keymap('n', "<leader>b", "<Cmd>Telescope buffers<cr>", opts)
keymap('n', "<leader>c", "<Cmd>Telescope colorscheme<cr>", opts)
keymap('n', "<leader>/", "<Cmd>Telescope current_buffer_fuzzy_find<cr>", opts)

--Toggle the tree
keymap('n', "<leader>t", "<Cmd>NvimTreeToggle<cr>", opts)

--Hop macros
keymap_multimode(function (md)
   keymap(md, "s", "<cmd>HopWordAC<cr>", opts)
   keymap(md, "S", "<cmd>HopWordBC<cr>", opts)

   keymap(md, "<c-s>", "<cmd>HopChar1<cr>", opts)

   keymap(md, '<leader>s', '<cmd>HopLineAC<cr>', opts)
   keymap(md, '<leader>S', '<cmd>HopLineBC<cr>', opts)
end, {'n', 'v'})

--Toggle 'Zen mode'
keymap('n', '<leader>z', '<cmd>ZenMode<cr>', opts)

