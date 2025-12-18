return {
	"lewis6991/gitsigns.nvim",
	event = "VeryLazy",
	opts = {
		signs = {
			add = { text = "┃" },
			change = { text = "⸾" },
			delete = { text = "▁" },
			topdelete = { text = "▔" },
			changedelete = { text = "⸾" },
		},
		current_line_blame = true,
		current_line_blame_opts = { delay = 500 },
		preview_config = { border = "rounded" },
	},
	config = function(_, opts)
		require("gitsigns").setup(opts)

		vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#2ea043", bg = nil })
		vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#3794ff", bg = nil })
		vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#f14c4c", bg = nil })
		vim.api.nvim_set_hl(0, "GitSignsAddLn", { bg = "#e6ffed" })
		vim.api.nvim_set_hl(0, "GitSignsChangeLn", { bg = "#e8f4ff" })
		vim.api.nvim_set_hl(0, "GitSignsDeleteLn", { bg = "#ffeef0" })
	end,
}
