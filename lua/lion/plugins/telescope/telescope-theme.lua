return {
	"nvim-telescope/telescope.nvim",
	opts = {
		pickers = {
			colorscheme = {
				enable_preview = true,
				ignore_builtins = true,
			},
		},
	},
	config = function(_, opts)
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local state = require("telescope.actions.state")
		local save_theme = require("lion.utils.save-theme").save_theme

		opts.pickers.colorscheme.attach_mappings = function(prompt_buf)
			actions.select_default:replace(function()
				local entry = state.get_selected_entry()
				actions.close(prompt_buf)

				vim.cmd("colorscheme " .. entry.value)
				save_theme(entry.value)
			end)

			return true
		end

		telescope.setup(opts)
	end,
}
