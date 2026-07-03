return {
	"danymat/neogen",
	dependencies = "nvim-treesitter/nvim-treesitter",
	cmd = "Neogen",
	keys = {
		{
			"<leader>cn",
			function()
				require("neogen").generate()
			end,
			desc = "Generate Annotation",
		},
		{
			"<leader>cN",
			function()
				require("neogen").generate({ type = "file" })
			end,
			desc = "Generate File Annotation",
		},
	},
	opts = {
		enabled = true,
		input_after_comment = true,
	},
}
