return {
	"windwp/nvim-ts-autotag",
	opts = {
		ft = { "html", "javascriptreact", "typescriptreact", "xml" },
		opts = {
			enable_close = true,
			enable_rename = true,
			enable_close_on_slash = false,
		},
		aliases = {
			["javascriptreact"] = "html",
			["typescriptreact"] = "html",
		},
	},
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
}
