return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = {
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			term_colors = true,
			-- transparent_background = true,
		},
	},
	{
		"dracula/vim",
		name = "dracula",
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "dracula",
			-- colorscheme = "catppuccin",
		},
	},
}
