return {
	"tyru/open-browser.vim",
	keys = {
		{
			"<leader>gu",
			"<Plug>(openbrowser-smart-search)",
			mode = { "n", "v" },
			desc = "Open URL word with browser",
		},
		{
			"<leader>gw",
			"<Plug>(openbrowser-search)",
			mode = { "n", "v" },
			desc = "Search current word with browser",
		},
	},
}
