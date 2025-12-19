local M = {}

-- highlight groups
M.setup = function()
	local set = vim.api.nvim_set_hl

	-- Git signs
	set(0, "GitSignsAdd", { fg = "#57f872" })
	set(0, "GitSignsChange", { fg = "#1579d2" })
	set(0, "GitSignsDelete", { fg = "#f14c4c" })

	set(0, "GitSignsAddLn", { bg = "#e6ffed" })
	set(0, "GitSignsChangeLn", { bg = "#e8f4ff" })
	set(0, "GitSignsDeleteLn", { bg = "#ffeef0" })
end

return M
