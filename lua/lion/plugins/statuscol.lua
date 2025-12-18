return {
	"luukvbaal/statuscol.nvim",
	config = function()
		local builtin = require("statuscol.builtin")

		require("statuscol").setup({
			bt_ignore = { "prompt", "terminal" },
			ft_ignore = { "NvimTree", "NeogitStatus" },
			relculright = false,
			segments = {
				-- fold arrows
				{
					text = { builtin.foldfunc },
					click = "v:lua.ScFa",
				},
				-- diagnostic
				{
					sign = {
						namespace = { "diagnostic/signs" },
						maxwidth = 1,
						auto = false,
					},
				},
				-- line number
				{
					text = { "%l" },
					click = "v:lua.ScLa",
				},
				-- gitsigns
				{
					sign = {
						namespace = { "gitsigns" },
						maxwidth = 1,
						auto = false,
					},
				},
				-- separator
				{
					text = { "│" },
				},
			},
		})
	end,
}
