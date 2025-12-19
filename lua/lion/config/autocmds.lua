local create_autocmd = vim.api.nvim_create_autocmd

-- highlight group autocommands
local highlight = require("lion.config.highlights")

create_autocmd("ColorScheme", {
	callback = highlight.setup,
})
