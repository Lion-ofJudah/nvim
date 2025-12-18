return {
	"rcarriga/nvim-notify",
	opts = {
		timeout = 3000,
		stages = "slide",
	},
	config = function(_, opts)
		require("notify").setup(opts)
		vim.notify = require("notify")
	end,
}
