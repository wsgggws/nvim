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
