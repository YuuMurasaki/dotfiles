-- Clear search highlights
vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- Select all
vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select whole buffer" })

-- Split windows movements
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to the left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to the split below" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to the split above" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to the right split" })

-- Move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Better half page down/up
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Replace the word you're on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
