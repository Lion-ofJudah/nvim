vim.g.mapleader = " "      -- map leader to <SPACE> " "
vim.g.maplocalleader = " " -- map local leader to <SPACE> " "

vim.opt.swapfile = false  -- stop creation of swap file

vim.opt.backup = false      -- no backup file
vim.opt.writebackup = false -- no write backup files

vim.opt.termguicolors = true -- enable 24 bit color support

vim.opt.fillchars = { eob = " " } -- replace tilde (~) at end of buffer

vim.opt.hlsearch = true  -- enable highlight to persist after search
vim.opt.incsearch = true -- enable highlighting of similar search terms

vim.opt.ignorecase = true -- make search case insensitive
vim.opt.smartcase = true  -- make search case sensitive when upper case is introduced
vim.opt.infercase = true  -- make replacement case aware

vim.opt.clipboard = "unnamedplus" -- sync neovim register with system clipboard

vim.opt.autoindent = true  -- enables auto indentation
vim.opt.smartindent = true -- enables indentation rules based on simple huristic rules like {}
vim.opt.cindent = true     -- enables indentation rules for c type languages

vim.opt.wrap = false -- disable line wrapping to avoid horizontal scroll

vim.opt.breakindent = true -- when line break happens, the line is indented the same way as the parent line

vim.opt.number = true         -- show line number
vim.opt.relativenumber = true -- show relative line number with respect to cursor line

vim.opt.splitbelow = true -- when horizontal screen split is created, the split is at the bootom
vim.opt.splitright = true -- when vertical screen split is created, the split is at the right side

vim.opt.winborder = "single" -- add a default window border on all floating windows (might disable it later)

vim.opt.fileencoding = "utf-8" -- change file encoding to utf-8

vim.opt.expandtab = true -- convert tab to <SPACE>
vim.opt.tabstop = 2      -- change tab from 8 to 2
vim.opt.shiftwidth = 2   -- change indentation width from 8 to 2

vim.opt.completeopt = {
  "menu",    -- shows popup even when there is only one option 
  "menuone", -- shows popup even when there is exactly only one match
  "noselect" -- prevents auto-selection of the first item
}                                                         
