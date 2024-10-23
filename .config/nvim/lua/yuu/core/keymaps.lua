-- Compile
vim.keymap.set('n', '<leader>gc', '<cmd>RunCpp<CR>', { desc = "Compile and run C++" })

-- buffers management
vim.keymap.set('n', '<leader>bt', '<cmd>enew<CR>', { desc = "Open new buffer" })
vim.keymap.set('n', '<leader>bd', '<cmd>%bd<CR>', { desc = "Delete all buffers" })
vim.keymap.set('n', '<leader>bw', '<cmd>bdelete<CR>', { desc = "Delete current buffer" })
vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', { desc = "Switch to the next bufferr" })
vim.keymap.set('n', '<S-Tab>', '<cmd>bprev<CR>', { desc = "Switch to the previous bufferr" })

-- Panes management
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- Clear search highlights
vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- Copy and write
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "general save file" })
vim.keymap.set("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })
