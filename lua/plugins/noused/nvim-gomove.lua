return {
	-- option + shift + hjkl: n,v 模式下上下左右交换
	"booperlv/nvim-gomove",
	config = function()
		require("gomove").setup({
			map_defaults = false,
			reindent = true,
			undojoin = true,
			move_past_end_col = false,
		})
	end,
}
