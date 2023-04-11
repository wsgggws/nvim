vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "go" },
	callback = function()
		vim.opt.tabstop = 8
		vim.opt.softtabstop = 8
		vim.opt.shiftwidth = 8
	end,
})
