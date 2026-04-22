return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { { "nvim-lua/plenary.nvim" } },
		config = function()
			local actions = require("telescope.actions")
			require("telescope").setup({
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
							["<esc>"] = actions.close,
						},
					},
				},
			})
		end,
	},
}
