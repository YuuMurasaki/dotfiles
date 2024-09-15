vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- general settings
opt.relativenumber = true
opt.number = true
opt.wrap = false
vim.g.autopairs_enabled = true
vim.g.mapleader = " "

-- tab && indentaion
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- colorscheme
opt.termguicolors = true
opt.background = "dark"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true
