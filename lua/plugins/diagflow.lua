return {
	"dgagn/diagflow.nvim",
	config = function()
		-- 在当前行上运行诊断程序, 默认 cursors 只在当前单词显示
		require("diagflow").setup({ scope = "line", placement = "inline", inline_padding_left = 3 })
	end,
}
