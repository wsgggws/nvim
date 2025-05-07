return {
	-- gaip= : Start EasyAlign command (ga) for inner paragraph
	-- vipga= : visual-select inner paragraph, Start EasyAlign command (ga), Align around =
	"junegunn/vim-easy-align",
	keys = {
		{
			"ga",
			"<Plug>(EasyAlign)",
			mode = { "n", "x" },
			desc = "EasyAlign text",
		},
	},
}
