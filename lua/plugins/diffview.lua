return {
	"sindrets/diffview.nvim",
	cmd = { "DiffviewClose", "DiffviewFileHistory", "DiffviewOpen" },
	keys = {
		{
			"<leader>gH",
			"<cmd>DiffviewFileHistory %<CR>",
			desc = "DiffviewFileHistory cur file",
		},
		{
			"<leader>gO",
			"<cmd>DiffviewOpen<CR>",
			desc = "DiffviewOpen",
		},
		{
			"<leader>gq",
			"<cmd>DiffviewClose<CR>",
			desc = "DiffviewClose",
		},
	},
}
