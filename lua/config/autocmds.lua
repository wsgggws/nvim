vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "go" },
	callback = function()
		vim.opt_local.expandtab = false -- 使用 tab 字符
		vim.opt.tabstop = 8
		vim.opt.softtabstop = 8
		vim.opt.shiftwidth = 8
	end,
})

local function update_autoformat()
	local project = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
	local ok, local_config = pcall(require, "config.local")

	local disable_autoformat_projects = {
		-- Keep private project names in lua/config/local.lua.
	}

	if ok then
		disable_autoformat_projects =
			vim.tbl_extend("force", disable_autoformat_projects, local_config.disable_autoformat_projects or {})

		if type(local_config.autoformat) == "function" then
			vim.g.autoformat = local_config.autoformat({
				cwd = vim.fn.getcwd(),
				project = project,
				default = not disable_autoformat_projects[project],
			})
			return
		end
	end

	vim.g.autoformat = not disable_autoformat_projects[project]
end

-- 1️⃣ Neovim 启动完成后，跑一次（此时 cwd / session 都稳定）
vim.api.nvim_create_autocmd("User", {
	pattern = "LazyVimStarted",
	callback = update_autoformat,
})
-- 2️⃣ 切换目录时也更新（适用于在 Neovim 内 cd 到其他 project 的情况）
vim.api.nvim_create_autocmd("DirChanged", {
	callback = update_autoformat,
})
-- 2️⃣ 每次进入 buffer 都检查（覆盖所有场景：打开文件、切换 tmux 回来后、切换 tab/window 等）
vim.api.nvim_create_autocmd("BufEnter", {
	callback = update_autoformat,
})

vim.api.nvim_create_user_command("TrimWhitespace", function()
	local view = vim.fn.winsaveview()
	vim.cmd([[%s/\s\+$//e]])
	vim.fn.winrestview(view)
end, {})
