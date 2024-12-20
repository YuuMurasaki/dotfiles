-- Clear highlighted text
vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights", silent = true })

-- Select all
vim.keymap.set("n", "<leader>a", "ggVG0", { desc = "Select whole buffer", silent = true })

-- Split windows movements
vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>", { desc = "Move to the left split", silent = true })
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>", { desc = "Move to the split below", silent = true })
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>", { desc = "Move to the split above", silent = true })
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>", { desc = "Move to the right split", silent = true })

-- Keep window centered when going up/down
vim.keymap.set("n", "J", "mzJ`z", { silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "n", "nzzzv", { silent = true })
vim.keymap.set("n", "N", "Nzzzv", { silent = true })

-- Move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { silent = true })
vim.keymap.set("v", ">", ">gv", { silent = true })

-- Disable Q, s
vim.keymap.set({ "n", "v" }, "Q", "<nop>")
vim.keymap.set({ "n", "v" }, "s", "<nop>")

-- Replace the word you're on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
