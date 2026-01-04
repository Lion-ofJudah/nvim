local usercmd = vim.api.nvim_create_user_command

local peek = require("peek")
usercmd("PeekOpen", peek.open, { desc = "Open peek markdown preview" })
usercmd("PeekClose", peek.close, { desc = "Close markdown preview" })
