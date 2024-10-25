-- Clear search highlights
vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- Select all
vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select whole buffer" })

-- Split windows
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>sq", "<C-w>q", { desc = "Close current split" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to the left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to the split below" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to the split above" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to the right split" })
