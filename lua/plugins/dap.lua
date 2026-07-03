return {
	{
		"mason-org/mason.nvim",
		optional = true,
		opts = {
			ensure_installed = {
				"debugpy",
				"delve",
				"codelldb",
			},
		},
	},
	{
		"mfussenegger/nvim-dap-python",
		optional = true,
		config = function()
			require("dap-python").setup("debugpy-adapter")
			require("dap-python").test_runner = "pytest"
		end,
	},
	{
		"leoluz/nvim-dap-go",
		optional = true,
		opts = {
			delve = {
				detached = vim.fn.has("win32") == 0,
			},
		},
	},
	{
		"mrcjkb/rustaceanvim",
		optional = true,
		opts = function(_, opts)
			opts = opts or {}
			opts.dap = opts.dap or {}
			return opts
		end,
	},
}
