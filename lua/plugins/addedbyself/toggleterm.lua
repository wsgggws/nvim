return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = true,
	keys = {
		{ "<leader>ft", "<cmd>ToggleTerm direction=horizontal size=19<cr>", desc = "ToggleTerm bottom" },
		{ "<leader>fT", "<cmd>ToggleTerm direction=tab<cr>", desc = "ToggleTerm tab" },
		{ "<leader>fl", "<cmd>ToggleTerm direction=vertical size=89<cr>", desc = "ToggleTerm right" },
		{ "<leader>fc", "<cmd>ToggleTermSendCurrentLine<cr>", desc = "ToggleTerm current line" },
		{ "<leader>fs", "<cmd>ToggleTermSendVisualSelection<cr>", desc = "ToggleTerm visual selection" },
	},
}
