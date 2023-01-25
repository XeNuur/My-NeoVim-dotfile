local opts = { noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

-- Help me
keymap('n', '<c-f>', ':Telescope keymaps<cr>', opts)

-- Faster saving:
keymap('n', '<leader>w', ':w!<cr>', opts)
keymap('n', '<leader>W', ':wa!<cr>', opts)

-- Window navigation:
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)

-- Press jk fast to exit insert and other modes:
keymap("i", "jk", "<ESC>", opts)
--keymap("v", "jk", "<ESC>", opts)

-- Tab navigation:
keymap('n', '<A-T>', "<Cmd>BufferMovePrevious<CR>", opts)
keymap('n', '<A-Y>', "<Cmd>BufferMoveNext<CR>", opts)

keymap('n', '<A-t>', "<Cmd>BufferPrevious<CR>", opts)
keymap('n', '<A-y>', "<Cmd>BufferNext<CR>", opts)

keymap('n', "<A-n>", ":tabnew<cr>", opts)
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
keymap('n', "<c-_>", ":noh<cr>", opts)

-- Fancy way to search for files and more...
keymap('n', "<leader>e", ":Telescope find_files<cr>", opts)
keymap('n', "<leader>b", ":Telescope buffers<cr>", opts)
keymap('n', "<leader>c", ":Telescope colorscheme<cr>", opts)
keymap('n', "<leader>/", ":Telescope current_buffer_fuzzy_find<cr>", opts)

--Toggle the tree
keymap('n', "<leader>t", ":NvimTreeToggle<cr>", opts)

--Hop macros
keymap('n', "s", ":HopWordAC<cr>", opts)
keymap('n', "S", ":HopWordBC<cr>", opts)

keymap('n', "<c-s>", ":HopChar1<cr>", opts)
keymap('n', "<c-S>", ":HopChar2<cr>", opts)

keymap('n', '<leader>s', ':HopLineAC<cr>', opts) 
keymap('n', '<leader>S', ':HopLineBC<cr>', opts) 


