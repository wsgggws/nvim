return {
	"charludo/projectmgr.nvim",
	lazy = false, -- important!
	config = function()
		require("projectmgr").setup({
			-- autogit = {
			-- 	enabled = true,
			-- 	command = "git pull --ff-only > .git/fastforward.log 2>&1",
			-- },
			session = { enabled = true, file = ".git/Session.vim" },
		})
	end,
	keys = {
		{
			"<leader>fp",
			"<CMD>ProjectMgr<CR>",
			desc = "Open Projects",
		},
	},
}
