return {
	"CRAG666/code_runner.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>rr", "<cmd>RunCode<cr>", desc = "Run Code" },
		{ "<leader>rq", "<cmd>RunClose<cr>", desc = "Run Quite" },
		{ "<ESC>", "<cmd>RunClose<cr>", desc = "Run Quite" },
	},
	opts = {
		-- mode: Mode in which you want to run. Are supported: "better_term", "float", "tab", "toggleterm" (type: bool)
		mode = "term",
		-- Focus on runner window(only works on toggle, term and tab mode)
		focus = false,
		-- startinsert (see ':h inserting-ex')
		startinsert = false,
		term = {
			--  Position to open the terminal, this option is ignored if mode is tab
			position = "bot",
			-- window size, this option is ignored if tab is true
			size = 15,
		},
		filetype = {
			c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
			go = "cd $dir && go run $fileName",
			python = "python -u",
			javascript = "node",
			java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
			cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
			sh = "bash",
			rust = "cd $dir && rustc $fileName && $dir$fileNameWithoutExt",
		},
	},
	ft = { "lua", "python", "c", "cpp", "go", "rust" },
}
