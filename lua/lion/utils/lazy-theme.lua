local M = {}
local theme_file = require("lion.utils.save-theme").theme_file

M.get_lazy_theme = function()
	local default_theme = "wildcharm"

	local f = io.open(theme_file, "r")
	if not f then
		return default_theme
	end

	local content = f:read("*all")
	f:close()

	local theme = content:match("colorscheme%s+[\"']?([%w%-_]+)[\"']?")
	if not theme or theme == "" then
		return default_theme
	end

	local success = pcall(vim.cmd.colorscheme, theme)
	if not success then
		return default_theme
	end

	return theme
end

return M
