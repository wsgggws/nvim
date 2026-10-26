return {
-- BEGIN QingShan plugin
  { dir = "/Users/thj/github/QingShan.nvim", name = "QingShan.nvim", lazy = true },
-- END QingShan plugin
	-- Keep all three themes installed; only change LazyVim's colorscheme below.
	{
		dir = vim.fn.expand("~/github/HuangPao.nvim"),
		lazy = true,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = true,
		opts = {
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			term_colors = true,
			-- transparent_background = true,
		},
	},
	{
		"dracula/vim",
		name = "dracula",
		lazy = true,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			-- colorscheme = "huangpao",
			colorscheme = "qingshan",
			-- colorscheme = "dracula",
			-- colorscheme = "catppuccin",
		},
	},
}
