return {
	"michaelb/sniprun",
	branch = "master",
	build = "sh install.sh",

	config = function()
		require("sniprun").setup({
			display = { "Classic", "VirtualTextOk", "TerminalWithCode" },
			display_options = {
				terminal_position = "horizontal",
				terminal_line_number = true,
				terminal_signcolumn = true,
			},
			show_no_output = { "Classic", "VirtualTextOk" },
			inline_messages = true,
			selected_interpreters = { "Python3_fifo", "JS_TS_deno" },
			repl_enable = { "Python3_fifo", "JS_TS_deno" },
			interpreter_options = {
				Python3_fifo = {
					interpreter = "/usr/bin/python3",
				},
			},
		})
	end,
	keys = {
		{
			"<leader>rl",
			"<Plug>SnipRun",
			mode = { "n" },
			desc = "SnipRun Line",
		},
		{
			"<leader>rv",
			"<Plug>SnipRun",
			mode = { "v" },
			desc = "SnipRun Visual Selection",
		},
		{
			"<leader>rc",
			"<Plug>SnipClose",
			mode = { "n" },
			desc = "Snip Close",
		},
		{
			"<leader>rt",
			"<Plug>SnipReset",
			mode = { "n" },
			desc = "Snip Reset",
		},
	},
}
