local opts = { noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

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
keymap("v", "jk", "<ESC>", opts)

-- Tab navigation:
keymap('n', "<leader>tn", ":tabnew<cr>", opts)
keymap('n', "<leader>to", ":tabonly<cr>", opts)
keymap('n', "<leader>tc", ":tabclose<cr>", opts)
keymap('n', "<leader>tm", ":tabmove<cr>", opts)
keymap('n', "<leader>tt", ":tabnext<cr>", opts)

