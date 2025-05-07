return {
	"chrisgrieser/nvim-genghis",
	keys = {
		{
			"<leader>yp",
			"<cmd>lua require('genghis').copyFilepath()<CR>",
			mode = { "n" },
			desc = "Yank Filepath",
		},
		{
			"<leader>yn",
			"<cmd>lua require('genghis').copyFilename()<CR>",
			mode = { "n" },
			desc = "Yank Filename",
		},
		{
			"<leader>yf",
			"<cmd>lua require('genghis').duplicateFile()<CR>",
			mode = { "n" },
			desc = "Yank File",
		},
		{
			"<leader>rn",
			"<cmd>lua require('genghis').renameFile()<CR>",
			mode = { "n" },
			desc = "Re Name current File",
		},
		{
			"<leader>fm",
			"<cmd>lua require('genghis').moveAndRenameFile()<CR>",
			mode = { "n" },
			desc = "File move and rename",
		},
		{
			"<leader>fd",
			"<cmd>lua require('genghis').trashFile()<CR>",
			mode = { "n" },
			desc = "File Delete",
		},
		{
			"<leader>fv",
			"<cmd>lua require('genghis').moveSelectionToNewFile()<CR>",
			mode = { "v" },
			desc = "Visual Selection to New File",
		},
	},
	dependencies = "stevearc/dressing.nvim",
}
