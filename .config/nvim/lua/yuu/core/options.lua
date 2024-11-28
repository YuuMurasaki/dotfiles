vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enable relative line numbers
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.numberwidth = 2

-- Disable the current line number and column number
vim.opt.ruler = false

-- Disable wrap && swapfile
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false

-- Enable autopairs_enabled
vim.g.autopairs_enabled = true

-- Tab && indentaion
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Colorscheme
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- Backspace
vim.opt.backspace = "indent,eol,start"

-- Clipboard
vim.opt.clipboard:append("unnamedplus")

-- Vim scrolloff
vim.opt.scrolloff = 5

-- Status line
vim.o.laststatus = 0 -- set to 0 to disable status line

-- Disable showing the mode below the statusline
vim.opt.showmode = false

-- Split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Enable signcolumn
vim.opt.signcolumn = "yes"

-- Disable some default providers
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
