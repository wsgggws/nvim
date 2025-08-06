return {
	"stevearc/conform.nvim",
	optional = true,
	opts = {
		formatters_by_ft = {
			-- 这种配置 看官方文档 *绝对* 比问 GPT 可靠
			-- https://docs.astral.sh/ruff/editors/setup/#vim  (With the conform.nvim plugin for Neovim.)
			["python"] = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
			["go"] = { "goimports", "gofmt" },
		},
	},
}
