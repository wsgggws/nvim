return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = {
			flavour = "mocha",
		},
	},
	{
		"folke/tokyonight.nvim",
		opts = {
			-- style = "ni",
		},
	},
	{
		"ellisonleao/gruvbox.nvim",
		opts = {
			transparent_mode = true,
			contrast = "soft",
			invert_tabline = true,
			invert_selection = true,
			invert_intend_guides = true,
			overrides = {
				Normal = os.getenv("TERM_PROGRAM") == "WezTerm" and { fg = nil, bg = "#ebdbb2" }
					or { fg = "#ebdbb2", bg = nil },
			},
		},
	},
	{
		"dracula/vim",
		name = "dracula",
	},
	{
		"maxmx03/solarized.nvim",
	},
	{
		"LazyVim/LazyVim",
		opts = function()
			local colorscheme = "gruvbox"
			-- local colorscheme = "tokyonight-day",
			-- local colorscheme = "catppuccin-mocha",
			-- local colorscheme = "gruvbox-material",
			if os.getenv("TERM_PROGRAM") == "WezTerm" then
				-- colorscheme = "solarized"
				-- colorscheme = "dracula"
				-- colorscheme = "gruvbox"
				-- colorscheme = "tokyonight-night"
				colorscheme = "catppuccin"
			end
			return {
				colorscheme = colorscheme,
			}
		end,
	},
}
