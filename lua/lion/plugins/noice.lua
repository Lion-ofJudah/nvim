return {
	"folke/noice.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	opts = {
		cmdline = {
			enabled = true,
			view = "cmdline_popup",
		},
		messages = {
			enabled = true,
		},
		views = {
			cmdline_popup = {
				position = {
					row = 3,
					col = "50%",
				},
			},
		},
	},
}
