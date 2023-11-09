local M = {}

M.is_tty = vim.env.TERM == 'linux'
if M.is_tty then
   M.icons = false
   return M
end
M.icons = vim.env.NVIM_NOICONS==nil or vim.env.NVIM_NOICONS=='0'
return M
