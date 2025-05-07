return {
	"neovim/nvim-lspconfig",
	opts = {
		diagnostics = {
			-- 不在当前行以虚拟文本形式显示错误信息
			underline = true,
			virtual_text = false,
		},
		setup = {
			clangd = function(_, opts)
				opts.capabilities.offsetEncoding = { "utf-16" }
			end,
		},
	},
}
