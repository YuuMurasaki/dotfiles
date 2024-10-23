vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- User define commands
vim.api.nvim_create_user_command('RunCpp', '!g++ % -o %< && ./%<', {})

-- disable netrw 
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enable relative line numbers
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.ruler = false

-- Disable showing the mode below the statusline
vim.opt.showmode = false

-- Disable wrap && swapfile
vim.opt.wrap = false
vim.opt.swapfile = false

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enable autopairs_enabled
vim.g.autopairs_enabled = true

-- tab && indentaion
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- colorscheme
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- backspace
vim.opt.backspace = "indent,eol,start"

-- clipboard
vim.opt.clipboard:append("unnamedplus")

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.signcolumn = "yes"

-- disable some default providers
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
