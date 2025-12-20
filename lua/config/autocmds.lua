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

local function update_autoformat()
	local project = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")

	local disable_autoformat_projects = {
		server_lucky_admin = true,
		server_tg_lb = true,
		bitslots_game = true,
		web3_user = true,
		server_pvp = true,
	}

	vim.g.autoformat = not disable_autoformat_projects[project]
end

-- 1️⃣ Neovim 启动完成后，跑一次（此时 cwd / session 都稳定）
vim.api.nvim_create_autocmd("User", {
	pattern = "LazyVimStarted",
	callback = update_autoformat,
})

-- 2️⃣ Project 切换：保存 & 恢复 session
vim.api.nvim_create_autocmd("DirChanged", {
	callback = function()
		-- persistence 会自动保存离开的 session
		-- 我们只需要 restore 新 project 的 session
		-- 🔥 强制按 cwd 恢复 session
		require("persistence").load({ force = true })
		-- session 恢复完成后，再决定 autoformat
		vim.schedule(update_autoformat)
	end,
})

vim.api.nvim_create_user_command("TrimWhitespace", function()
	local view = vim.fn.winsaveview()
	vim.cmd([[%s/\s\+$//e]])
	vim.fn.winrestview(view)
end, {})
