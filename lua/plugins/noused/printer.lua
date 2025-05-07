return {
	"rareitems/printer.nvim",

	config = function()
		require("printer").setup({
			keymap = "gp", -- Plugin doesn't have any keymaps by default
			behavior = "insert_below", -- how operator should behave
			formatters = {
				-- you can define your formatters for specific filetypes
				-- by assigning function that takes two strings
				-- one text modified by 'add_to_inside' function
				-- second the variable (thing) you want to print out
				-- see examples in lua/formatters.lua
				c = function(inside, variable)
					if string.find(inside, '"') ~= nil then
						return string.format("printf('%s: %%s\\n', %s);", inside, variable)
					else
						return string.format('printf("%s: %%s\\n", %s);', inside, variable)
					end
				end,
				go = function(text_inside, text_var)
					if string.find(text_inside, '"') ~= nil then
						return string.format("fmt.Println('%s = ', %s)", text_inside, text_var)
					else
						return string.format('fmt.Println("%s = ", %s)', text_inside, text_var)
					end
				end,
				python = function(inside, variable)
					if string.find(inside, '"') ~= nil then
						return string.format("print('%s: ', %s)", inside, variable)
					else
						return string.format('print("%s: ", %s)', inside, variable)
					end
				end,
				javascript = function(text_inside, text_var)
					if string.find(text_inside, '"') ~= nil then
						return string.format("console.log('%s = ', %s)", text_inside, text_var)
					else
						return string.format("console.log('%s = ', %s)", text_inside, text_var)
					end
				end,
			},

			vim.keymap.set({ "n", "v" }, "gp", "<Plug>(printer_below)", { desc = "Print Below" }),
			vim.keymap.set("n", "<leader>pw", "<Plug>(printer_print)iw", { desc = "Print current word" }),
			vim.keymap.set("n", "<leader>pW", "<Plug>(printer_print)iW", { desc = "Print current WORD" }),
		})
	end,
}
