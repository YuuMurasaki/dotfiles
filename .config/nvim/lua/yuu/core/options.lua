-- Set leader key to < space >
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
vim.opt.completeopt = "menu,menuone,noselect"

vim.opt.fillchars = {
    foldopen = "",
    foldclose = "",
    fold = " ",
    foldsep = " ",
    diff = "╱",
    eob = " ",
}

vim.opt.foldlevel = 99
vim.opt.linebreak = true -- Wrap lines at convenient points
vim.opt.mouse = "a" -- Enable mouse mode
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 8 -- Columns of context
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
vim.opt.spelllang = { "en" }
vim.o.laststatus = 3
vim.o.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.timeoutlen = vim.g.vscode and 1000 or 300 -- Lower than default (1000) to quickly trigger which-key

-- Split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

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
