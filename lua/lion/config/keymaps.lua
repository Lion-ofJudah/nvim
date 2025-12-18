local keymap = function(mode, lhs, rhs, desc)
	vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, desc = desc })
end

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", "Move to left window")
keymap("n", "<C-l>", "<C-w>l", "Move to right window")
keymap("n", "<C-j>", "<C-w>j", "Move to bottom window")
keymap("n", "<C-k>", "<C-w>k", "Move to top window")

-- Cursor centering
keymap("n", "<C-u>", "<C-u>zz", "Scroll up half-page and center")
keymap("n", "<C-d>", "<C-d>zz", "Scroll down half-page and center")
keymap("n", "n", "nzzzv", "Next search result and center")
keymap("n", "N", "Nzzzv", "Previous search result and center")

-- Window resizing
keymap("n", "<C-UP>", ":resize +2<CR>", "Increase window height")
keymap("n", "<C-DOWN>", ":resize -2<CR>", "Decrease window height")
keymap("n", "<C-RIGHT>", ":vertical resize +2<CR>", "Increase window width")
keymap("n", "<C-LEFT>", ":vertical resize -2<CR>", "Decrease window width")

-- Better indentation
keymap("v", "<", "<gv", "Indent left and reselect")
keymap("v", ">", ">gv", "Indent right and reselect")

-- Move code blocks
keymap("v", "K", ":m '<-2<CR>gv=gv", "Move selection up")
keymap("v", "J", ":m '>+1<CR>gv=gv", "Move selection down")

-- Stop unnecessary yank
keymap("n", "c", '"_c', "Change without yanking")
keymap("n", "C", '"_C', "Change to end of line without yanking")
keymap("v", "p", '"_dP', "Paste over selection without yanking")

-- Telescope
local builtin = require("telescope.builtin")

keymap("n", "<leader>ff", builtin.find_files, "Telescope find files")
keymap("n", "<leader>fg", builtin.live_grep, "Telescope live grep")
keymap("n", "<leader>fb", builtin.buffers, "Telescope buffers")
keymap("n", "<leader>fh", builtin.help_tags, "Telescope help tags")
keymap("n", "<leader>ts", ":Telescope colorscheme<CR>", "Telescope change colorscheme")

-- Nvim-tree
local tree = require("nvim-tree.api")

keymap("n", "<leader>e", tree.tree.toggle, "Nvim-tree toggle")

-- Lsp
local lsp_buf = vim.lsp.buf

keymap({ "n", "v" }, "<leader>ca", lsp_buf.code_action, "Display possible code actions")
keymap("n", "<leader>ci", lsp_buf.implementation, "Goto code implementations")
keymap("n", "<leader>rs", lsp_buf.rename, "Rename reference symbol")
keymap("n", "<leader>rl", lsp_buf.references, "List all references for symbol")
keymap("n", "<leader>td", lsp_buf.type_definition, "Jump to definition of symbol")
keymap("n", "<leader>ds", lsp_buf.document_symbol, "List all symbols in location list")
keymap("n", "K", lsp_buf.hover, "Hover definition")

-- Bufferline
local buf_line = require("bufferline")

keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", "Goto next buffer")
keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", "Goto previous buffer")
keymap("n", "<leader><Tab>", ":bd<CR>", "Close buffer")

-- Git
local gitsigns = require("gitsigns")

keymap("n", "[c", function()
	if vim.wo.diff then
		vim.cmd.normal({ "[c", bang = true })
	else
		gitsigns.nav_hunk("prev")
	end
end, "Navigate previous hunk")

keymap("n", "]c", function()
	if vim.wo.diff then
		vim.cmd.normal({ "]c", bang = true })
	else
		gitsigns.nav_hunk("next")
	end
end, "Navigate next hunk")

keymap("n", "<leader>hs", gitsigns.stage_hunk, "Stage hunk")
keymap("n", "<leader>hr", gitsigns.reset_hunk, "Reset hunk")
keymap("n", "<leader>hS", gitsigns.stage_buffer, "Stage buffer")
keymap("n", "<leader>hR", gitsigns.reset_buffer, "Reset buffer")
keymap("n", "<leader>hp", gitsigns.preview_hunk, "Preview hunk")
keymap("n", "<leader>hi", gitsigns.preview_hunk_inline, "Preview hunk inline")

keymap("n", "<leader>hb", function()
	gitsigns.blame_line({ full = true })
end, "Line blame")

keymap("n", "<leader>hd", gitsigns.diffthis, "Git diff")

keymap("n", "<leader>hD", function()
	gitsigns.diffthis("~")
end, "Git diff")

keymap("n", "<leader>hq", gitsigns.setqflist, "Populate quickfix list")

keymap("n", "<leader>hQ", function()
	gitsigns.setqflist("all")
end, "Populate quick fixlist with all modified files")

keymap("n", "<leader>tb", gitsigns.toggle_current_line_blame, "Toggle line blame")
keymap("n", "<leader>tw", gitsigns.toggle_word_diff, "Toggle word diff")

keymap({ "o", "x" }, "ih", gitsigns.select_hunk, "Select hunk")

keymap("n", "<leader>gg", ":Neogit kind=vsplit<CR>", "Neogit open window")
