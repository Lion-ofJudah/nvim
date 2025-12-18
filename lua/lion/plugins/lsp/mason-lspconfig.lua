local lsps = require("lion.config.lsps")

return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = lsps,
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)
	end,
}
