local args = require 'arg'
local actions = require "telescope.actions"

require('telescope').setup{
   defaults = {
      --disable_devicons = not require 'arg'.icons,
      disable_devicons = true,

      prompt_prefix = "❯ ",
      selection_caret = "❯ ",
      layout_strategy = "horizontal",
      use_less = true,

      layout_config = {
        width = 0.75,
        prompt_position = "top",
      },

      mappings = {
          i = {
            ["<esc>"] = actions.close
          }
      },
   },

pickers = {
  find_files = {
    disable_devicons = not args.icons
  },
  buffers = {
    disable_devicons = not args.icons 
  },
},
}
