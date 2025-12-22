local formatters = require("lion.config.formatters")

return {
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			formatters_by_ft = formatters,
			format_on_save = {
				timeout_ms = 1500,
				lsp_fallback = true,
			},
		},
	},
	{
		"zapling/mason-conform.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"stevearc/conform.nvim",
		},
		opts = {
			ignore_install = {},
		},
	},
}
