return {
	"stevearc/overseer.nvim",
	cmd = {
		"OverseerOpen",
		"OverseerClose",
		"OverseerToggle",
		"OverseerRun",
		"OverseerShell",
		"OverseerTaskAction",
	},
	keys = {
		{ "<leader>or", "<cmd>OverseerRun<cr>", desc = "Run Task" },
		{ "<leader>ot", "<cmd>OverseerToggle<cr>", desc = "Toggle Tasks" },
		{ "<leader>oo", "<cmd>OverseerOpen<cr>", desc = "Open Tasks" },
		{ "<leader>os", "<cmd>OverseerShell<cr>", desc = "Shell Task" },
		{ "<leader>oq", "<cmd>OverseerTaskAction<cr>", desc = "Task Action" },
	},
	opts = {
		task_list = {
			direction = "bottom",
			min_height = 8,
			max_height = 20,
		},
	},
}
