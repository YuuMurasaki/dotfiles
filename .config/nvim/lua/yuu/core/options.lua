vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Set leader key to < space >
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.laststatus = 3
vim.o.showmode = false

-- Numbers
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.ruler = false

-- Disable wrap && swapfile
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false

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
vim.opt.clipboard:append "unnamedplus"

-- Vim scrolloff
vim.opt.scrolloff = 5

-- Split windows
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.signcolumn = "yes"
vim.o.timeoutlen = 400

-- Go to previous/next line with h,l,left arrow and right arrow when cursor reaches end/beginning of line
vim.opt.whichwrap:append "<>[]hl"

-- Disable some default providers
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
