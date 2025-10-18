return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "goimports", "gofmt" },
			rust = { "rustfmt", lsp_format = "fallback" },
			python = { "ruff_fix", "ruff_format", "ruff_organize_imports", "pyright" },
			javascript = { "biome" },
			typescript = { "biome" },
			sql = { "sqruff" },
			["*"] = { "codespell" },
			["_"] = { "trim_whitespace" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
