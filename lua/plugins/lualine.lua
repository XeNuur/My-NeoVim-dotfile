local mode_str = {
   ['n'] = "NO",
   ['i'] = "IN",
   ['c'] = "CMD",
   ['t'] = "TERM",
}

local function custom_mode()
   local mod = vim.fn.mode()
   local ret = mode_str[mod]
   if(ret) then
      return ret
   end 
   return string.upper(mod) 
end

require 'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {custom_mode},
    lualine_b = {'filename', 'filetype'},
    lualine_c = {'branch', 'diff', 'diagnostics'},

    lualine_x = {'encoding'},
    lualine_y = {'progress', 'location'},
    lualine_z = {}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

