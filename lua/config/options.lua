-- local opt = vim.opt

-- opt.tabstop = 4
-- opt.softtabstop = 4
-- opt.shiftwidth = 4
-- opt.autoindent = true
-- opt.smartindent = true
-- opt.termguicolors = true

vim.wo.colorcolumn = "120"

-- for winresizer
vim.g.winresizer_vert_resize = 2

vim.g.snacks_animate = false

-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "pyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "pyright"
