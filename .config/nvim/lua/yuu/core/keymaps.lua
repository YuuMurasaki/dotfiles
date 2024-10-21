-- General
vim.keymap.set('n', '<leader>nh', '<cmd>nohl<CR>', { desc = "Clear highlights" })

-- Compile
vim.keymap.set('n', '<leader>gc', '<cmd>RunCpp<CR>', { desc = "Compile and run C++" })

--  tabs management
vim.keymap.set('n', '<leader>tt', '<cmd>tabnew<CR>', { desc = "Open new tab" })
vim.keymap.set('n', '<leader>tw', '<cmd>tabclose<CR>', { desc = "Close current tab" })

-- buffers management
vim.keymap.set('n', '<leader>bt', '<cmd>enew<CR>', { desc = "Open new buffer" })
vim.keymap.set('n', '<leader>bd', '<cmd>%bd<CR>', { desc = "Delete all buffers" })
vim.keymap.set('n', '<leader>bw', '<cmd>bdelete<CR>', { desc = "Delete current buffer" })
vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', { desc = "Switch to the next bufferr" })
vim.keymap.set('n', '<S-Tab>', '<cmd>bprev<CR>', { desc = "Switch to the previous bufferr" })
