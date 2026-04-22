local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Telescope (LazyVim already includes Telescope)
map("n", "<leader>e", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>b", "<cmd>Telescope buffers<cr>", opts)
map("n", "<leader>c", "<cmd>Telescope colorscheme<cr>", opts)
map("n", "<leader>r", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
map("n", "<leader>R", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>h", "<cmd>Telescope keymaps<cr>", opts)

-- Terminal
map("t", "<Esc>", [[<C-\><C-n>]], opts)
map("n", "<C-p>", "<cmd>ToggleTerm<cr>", opts)

-- Zen mode
map("n", "<leader>z", "<cmd>ZenMode<cr>", opts)

-- Close buffer
map("n", "<A-c>", "<cmd>bdelete<cr>", opts)

-- Go to buffer by number (bufferline uses this)
for i = 1, 9 do
	map("n", "<A-" .. i .. ">", "<cmd>BufferLineGoToBuffer " .. i .. "<cr>", opts)
end

map("n", "<A-0>", "<cmd>BufferLineGoToBuffer -1<cr>", opts)
