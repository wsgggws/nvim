return {
	"nvim-neotest/neotest",
	optional = true,
	opts = {
		adapters = {
			["neotest-python"] = {
				runner = "pytest",
			},
			["neotest-golang"] = {
				go_test_args = { "-v", "-race", "-count=1", "-timeout=60s" },
				dap_go_enabled = true,
			},
			["rustaceanvim.neotest"] = {},
		},
	},
	keys = {
		{
			"<leader>tn",
			function()
				require("neotest").run.run()
			end,
			desc = "Run Nearest Test",
		},
		{
			"<leader>tf",
			function()
				require("neotest").run.run(vim.fn.expand("%"))
			end,
			desc = "Run File Tests",
		},
		{
			"<leader>tA",
			function()
				require("neotest").run.run(vim.uv.cwd())
			end,
			desc = "Run All Tests",
		},
	},
}
