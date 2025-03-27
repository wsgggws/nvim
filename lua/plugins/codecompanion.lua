return {
	"olimorris/codecompanion.nvim", -- The KING of AI programming
	dependencies = {
		-- "j-hui/fidget.nvim",
		-- { "echasnovski/mini.pick", config = true },
		{ "ibhagwan/fzf-lua", config = true },
		{ "mrjones2014/legendary.nvim", config = true },
	},
	opts = {
		adapters = {
			copilot = function()
				return require("codecompanion.adapters").extend("copilot", {})
			end,
			deepseek = function()
				return require("codecompanion.adapters").extend("deepseek", {
					env = {
						api_key = os.getenv("DEEPSEEK_API_KEY"),
					},
				})
			end,
		},
		prompt_library = {
			["Docusaurus"] = {
				strategy = "chat",
				description = "Write documentation for me",
				opts = {
					index = 11,
					is_slash_cmd = false,
					auto_submit = false,
					short_name = "docs",
				},
				references = {
					{
						type = "file",
						path = {
							"doc/.vitepress/config.mjs",
							"lua/codecompanion/config.lua",
							"README.md",
						},
					},
				},
				prompts = {
					{
						role = "user",
						content = [[I'm rewriting the documentation for my plugin CodeCompanion.nvim, as I'm moving to a vitepress website. Can you help me rewrite it?

I'm sharing my vitepress config file so you have the context of how the documentation website is structured in the `sidebar` section of that file.

I'm also sharing my `config.lua` file which I'm mapping to the `configuration` section of the sidebar.
]],
					},
				},
			},
			["Test workflow"] = {
				strategy = "workflow",
				description = "Use a workflow to test the plugin",
				opts = {
					index = 4,
				},
				prompts = {
					{
						{
							role = "user",
							content = "Generate a Python class for managing a book library with methods for adding, removing, and searching books",
							opts = {
								auto_submit = false,
							},
						},
					},
					{
						{
							role = "user",
							content = "Write unit tests for the library class you just created",
							opts = {
								auto_submit = true,
							},
						},
					},
					{
						{
							role = "user",
							content = "Create a TypeScript interface for a complex e-commerce shopping cart system",
							opts = {
								auto_submit = true,
							},
						},
					},
					{
						{
							role = "user",
							content = "Write a recursive algorithm to balance a binary search tree in Java",
							opts = {
								auto_submit = true,
							},
						},
					},
					{
						{
							role = "user",
							content = "Generate a comprehensive regex pattern to validate email addresses with explanations",
							opts = {
								auto_submit = true,
							},
						},
					},
					{
						{
							role = "user",
							content = "Create a Rust struct and implementation for a thread-safe message queue",
							opts = {
								auto_submit = true,
							},
						},
					},
					{
						{
							role = "user",
							content = "Write a GitHub Actions workflow file for CI/CD with multiple stages",
							opts = {
								auto_submit = true,
							},
						},
					},
					{
						{
							role = "user",
							content = "Create SQL queries for a complex database schema with joins across 4 tables",
							opts = {
								auto_submit = true,
							},
						},
					},
					{
						{
							role = "user",
							content = "Write a Lua configuration for Neovim with custom keybindings and plugins",
							opts = {
								auto_submit = true,
							},
						},
					},
					{
						{
							role = "user",
							content = "Generate documentation in JSDoc format for a complex JavaScript API client",
							opts = {
								auto_submit = true,
							},
						},
					},
				},
			},
		},
		strategies = {
			chat = {
				adapter = "copilot",
				roles = {
					user = "olimorris",
				},
				keymaps = {
					send = {
						modes = {
							i = { "<C-CR>", "<C-s>" },
						},
					},
					completion = {
						modes = {
							i = "<C-x>",
						},
					},
				},
				slash_commands = {
					["buffer"] = {
						opts = {
							provider = "snacks",
							keymaps = {
								modes = {
									i = "<C-b>",
								},
							},
						},
					},
					["help"] = {
						opts = {
							provider = "snacks",
							max_lines = 1000,
						},
					},
					["file"] = {
						opts = {
							provider = "snacks",
						},
					},
					["symbols"] = {
						opts = {
							provider = "snacks",
						},
					},
				},
				tools = {
					vectorcode = {
						description = "Run VectorCode to retrieve the project context.",
						callback = function()
							return require("vectorcode.integrations").codecompanion.chat.make_tool()
						end,
					},
				},
			},
			inline = { adapter = "copilot" },
		},
		display = {
			action_palette = {
				provider = "default",
			},
			chat = {
				-- show_references = true,
				-- show_header_separator = false,
				-- show_settings = false,
			},
			diff = {
				provider = "mini_diff",
			},
		},
		opts = {
			log_level = "DEBUG",
		},
	},
	init = function()
		vim.cmd([[cab cc CodeCompanion]])
		require("legendary").keymaps({
			{
				itemgroup = "CodeCompanion",
				icon = "",
				description = "Use the power of AI...",
				keymaps = {
					{
						"<leader>a",
						"<cmd>CodeCompanionActions<CR>",
						description = "Open the action palette",
						mode = { "n", "v" },
					},
					{
						"<LocalLeader>a",
						"<cmd>CodeCompanionChat Toggle<CR>",
						description = "Toggle a chat buffer",
						mode = { "n", "v" },
					},
					{
						"ga",
						"<cmd>CodeCompanionChat Add<CR>",
						description = "Add selected text to a chat buffer",
						mode = { "n", "v" },
					},
				},
			},
		})
		-- require("codecompanion.spinner"):init()
	end,
}
