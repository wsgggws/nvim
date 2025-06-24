vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "go" },
	callback = function()
		vim.opt_local.expandtab = false -- 使用 tab 字符
		vim.opt.tabstop = 8
		vim.opt.softtabstop = 8
		vim.opt.shiftwidth = 8
	end,
})

vim.api.nvim_create_autocmd({ "ExitPre" }, {
	callback = function()
		vim.opt.guicursor = "a:ver25-blinkon250-blinkoff400-blinkwait700"
		-- vim.opt.guicursor = "a:hor25-blinkon250-blinkoff400-blinkwait700"
	end,
})
