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
	end,
}
