local actions = require "telescope.actions"

require('telescope').setup{
   defaults = {
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
   }
}
