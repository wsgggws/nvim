return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	opts = {
		options = {
			custom_filter = function(bufnr)
				-- 忽略特殊 buffer（terminal / help / prompt 等）
				if vim.bo[bufnr].buftype ~= "" then
					return false
				end

				local name = vim.api.nvim_buf_get_name(bufnr)
				if name == "" then
					return false
				end

				local uv = vim.uv

				-- uv.cwd() 可能返回 nil（lua_ls 要求显式处理）
				local cwd0 = uv.cwd()
				if not cwd0 then
					return false
				end

				local cwd = uv.fs_realpath(cwd0)
				if not cwd then
					return false
				end

				local path = uv.fs_realpath(name)
				if not path then
					return false
				end

				return vim.startswith(path, cwd)
			end,
		},
	},
}
