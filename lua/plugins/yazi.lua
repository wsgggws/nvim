return {
	"mikavilpas/yazi.nvim",
	version = "*",
	event = "VeryLazy",
	dependencies = {
		{ "nvim-lua/plenary.nvim", lazy = true },
	},
	keys = {
		{
			"<leader>y",
			"<cmd>Yazi<cr>",
			mode = { "n", "v" },
			desc = "Open Yazi at current file",
		},
		{
			"<leader>Y",
			"<cmd>Yazi cwd<cr>",
			desc = "Open Yazi at cwd",
		},
		{
			"<leader>uy",
			"<cmd>Yazi toggle<cr>",
			desc = "Toggle last Yazi",
		},
	},
	opts = {
		open_for_directories = false,
		change_neovim_cwd_on_close = false,
		floating_window_scaling_factor = 0.9,
		yazi_floating_window_border = "rounded",
		keymaps = {
			show_help = "<f1>",
			open_file_in_vertical_split = "<c-v>",
			open_file_in_horizontal_split = "<c-x>",
			open_file_in_tab = "<c-t>",
			grep_in_directory = "<c-s>",
			replace_in_directory = "<c-g>",
			cycle_open_buffers = "<tab>",
			copy_relative_path_to_selected_files = "<c-y>",
			send_to_quickfix_list = "<c-q>",
			change_working_directory = "<c-\\>",
			open_and_pick_window = "<c-o>",
		},
	},
}
