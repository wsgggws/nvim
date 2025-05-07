return {
	-- g<, g>，gS then hl: 左右交换
	-- "machakann/vim-swap",
	-- -- option + jk: 上下交换
	keys = {
		{
			"ga",
			"<Plug>(swap-interactive)",
			mode = { "n", "x" },
			desc = "Swap interactive",
		},
	},
}
