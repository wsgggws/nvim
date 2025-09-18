-- 将 Ctrl+l 映射到移至行首
vim.api.nvim_set_keymap("i", "<C-l>", "<Home>", { noremap = true, silent = true })
-- 将 Ctrl+a 映射到移至行第一个非空白字符处
vim.api.nvim_set_keymap("i", "<C-a>", [[<C-o>:normal! ^\s*\<CR>]], { noremap = true, silent = true })
-- 将 Ctrl+e 映射到移至行尾
vim.api.nvim_set_keymap("i", "<C-e>", "<End>", { noremap = true, silent = true })

-- window resize, 需要确保这快捷键没有被系统占用，否则无效
vim.api.nvim_set_keymap("n", "<c-s-j>", "<cmd>res +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<c-s-k>", "<cmd>res -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<c-s-h>", "<cmd>vertical resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<c-s-l>", "<cmd>vertical resize +2<CR>", { noremap = true, silent = true })

-- 定义 toggle 函数
_G.toggle_fmt_skip = function(start_line, end_line)
	local buf = 0
	for i = start_line, end_line do
		local line = vim.api.nvim_buf_get_lines(buf, i - 1, i, false)[1]
		if line:match("# fmt: skip%s*$") then
			-- 删除尾部 fmt: skip
			local new_line = line:gsub("%s*# fmt: skip%s*$", "")
			vim.api.nvim_buf_set_lines(buf, i - 1, i, false, { new_line })
		else
			-- 添加尾部 fmt: skip
			vim.api.nvim_buf_set_lines(buf, i - 1, i, false, { line .. " # fmt: skip" })
		end
	end
end

-- 普通模式 toggle 当前行
vim.api.nvim_set_keymap(
	"n",
	"gcs",
	[[:lua _G.toggle_fmt_skip(vim.fn.line("."), vim.fn.line("."))<CR>]],
	{ noremap = true, silent = true }
)
