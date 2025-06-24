return {
	"stevearc/conform.nvim",
	optional = true,
	opts = {
		format_on_save = {
			timeout_ms = 3000,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			-- 这种配置 看官方文档 *绝对* 比问 GPT 可靠
			-- https://docs.astral.sh/ruff/editors/setup/#vim  (With the conform.nvim plugin for Neovim.)
			["python"] = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
			["go"] = { "goimports", "gofmt" },
		},
	},
}
