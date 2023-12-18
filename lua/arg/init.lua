local M = {}

local function flag_enabled(flag)
    local v = vim.env[flag]
    return v==nil or v=='0'
end

M.is_tty = vim.env.TERM == 'linux'
if M.is_tty then
   M.icons = false
   return M
end

M.icons = flag_enabled("NVIM_NOICONS")
M.notlsp = flag_enabled("NVIM_NOLSP")
return M
