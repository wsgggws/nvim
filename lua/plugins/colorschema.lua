return {
-- theme: sheepskin
	{
		dir = vim.fn.expand("~/github/sheepskin.nvim"),
		lazy = false,
		priority = 1000,
	},
-- theme: catppuccin
-- 	{
-- 		"catppuccin/nvim",
-- 		name = "catppuccin",
-- 		opts = {
-- 			flavour = "mocha", -- latte, frappe, macchiato, mocha
-- 			term_colors = true,
-- 			-- transparent_background = true,
-- 		},
-- 	},
-- theme: dracula
-- 	{
-- 		"dracula/vim",
-- 		name = "dracula",
-- 	},
-- theme: end
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "sheepskin",
			-- colorscheme = "dracula",
			-- colorscheme = "catppuccin",
		},
	},
}
