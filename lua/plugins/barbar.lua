local args = require 'arg'
local separator = '▎'
if args.is_tty then
   separator = ''
end

require 'bufferline'.setup {
  animation = false,
  auto_hide = true,
  tabpages = true,

  exclude_ft = {'javascript'},
  exclude_name = {'package.json'},

  hide = { current = false, inactive = false, visible = false },
  icons = {
	filetype = {
           enabled = args.icons
        },

	pinned = {button = '^'},
        modified = {button = '●'},
        button = {button = ' '},

        separator = {left = separator, right = ''},
        separator_at_end = false,

        buffer_index = true,
  },
  icon_custom_colors = false,

  insert_at_end = false,
  insert_at_start = false,

  maximum_padding = 1,
  minimum_padding = 1,
  maximum_length = 30,

  semantic_letters = true,
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
  no_name_title = "[emptniac]",
}
