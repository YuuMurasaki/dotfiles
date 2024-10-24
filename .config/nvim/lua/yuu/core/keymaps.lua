-- Compile
vim.keymap.set('n', '<leader>gc', '<cmd>RunCpp<CR>', { desc = "Compile and run C++" })

-- buffers management
vim.keymap.set('n', '<leader>bt', '<cmd>enew<CR>', { desc = "Open new buffer" })
vim.keymap.set('n', '<leader>bd', '<cmd>%bd<CR>', { desc = "Delete all buffers" })
vim.keymap.set('n', '<leader>bw', '<cmd>bdelete<CR>', { desc = "Delete current buffer" })
vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', { desc = "Switch to the next bufferr" })
vim.keymap.set('n', '<S-Tab>', '<cmd>bprev<CR>', { desc = "Switch to the previous bufferr" })

-- Clear search highlights
vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- Copy and write
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "general save file" })
vim.keymap.set("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })
