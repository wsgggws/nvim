return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{
			"nvim-telescope/telescope-live-grep-args.nvim",
			-- This will not install any breaking changes.
			-- For major updates, this must be adjusted manually.
			version = "^1.0.0",
		},
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			config = function()
				require("telescope").load_extension("fzf")
			end,
		},
		{
			"nvim-telescope/telescope-project.nvim",
			config = function()
				require("telescope").load_extension("project")
			end,
		},
	},
	config = function()
		local telescope = require("telescope")
		local lga_actions = require("telescope-live-grep-args.actions")
		telescope.setup({
			defaults = {
				path_display = { shorten = { len = 2, exclude = { 1, 2, -1, -2 } } },
				dynamic_preview_title = true,
				layout_config = {
					horizontal = {
						preview_width = 0.6,
						preview_cutoff = 30,
					},
					width = { padding = 8 },
					height = { padding = 2 },
				},
			},
			extensions = {
				live_grep_args = {
					auto_quoting = true, -- enable/disable auto-quoting
					-- define mappings, e.g.
					mappings = { -- extend mappings
						i = {
							["<C-k>"] = lga_actions.quote_prompt(),
							["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
							["<C-t>"] = lga_actions.quote_prompt({ postfix = " -t " }),
						},
					},
					-- ... also accepts theme settings, for example:
					-- theme = "dropdown", -- use dropdown theme
					-- theme = { }, -- use own theme spec
					-- layout_config = { mirror=true }, -- mirror preview pane
				},
			},
		})
		telescope.load_extension("live_grep_args")
	end,
	keys = {
		{
			"<leader>/",
			"<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
			desc = "Live Grep With Args",
		},
		{
			"<leader>sg",
			"<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
			desc = "Live Grep With Args",
		},
		{
			"<leader>fp",
			"<cmd>Telescope project<CR>",
			desc = "Find projects",
		},
	},
}
