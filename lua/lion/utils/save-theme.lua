local M = {}

-- path of selected theme
M.theme_file = vim.fn.stdpath("config") .. "/lua/current-theme.lua"

-- helper function to save selected theme on "theme_file" path
M.save_theme = function(name)
	local f = io.open(M.theme_file, "w")
	if not f then
		vim.notify("Failed to save colorscheme", vim.log.levels.ERROR)
		return
	end

	f:write(string.format([[vim.cmd("colorscheme %s")]], name))
	f:close()
end

return M
