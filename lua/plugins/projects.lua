return {
	"ahmedkhalf/project.nvim",
	event = "VeryLazy",
	opts = {
		-- 自动检测项目根
		detection_methods = { "pattern" },

		-- 常见项目标识
		patterns = {
			".git",
			"Makefile",
			"package.json",
			"pyproject.toml",
			"go.mod",
			"Cargo.toml",
		},
		exclude_dirs = {
			vim.fn.stdpath("data") .. "/lazy/*",
		},
		-- 不切换 buffer / 不关 terminal
		silent_chdir = true,
		scope_chdir = "global",
	},
	config = function(_, opts)
		require("project_nvim").setup(opts)
	end,

	keys = {
		{
			"<leader>fp",
			function()
				require("snacks").picker.projects()
			end,
			desc = "Project switch",
		},
	},
}
