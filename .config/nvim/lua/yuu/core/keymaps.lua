---- USER KEYMAPS ----
-- General
vim.keymap.set('n', '<leader>nh', '<cmd>nohl<CR>', { desc = "Clear highlights" })

-- windows management
vim.keymap.set('n', '<leader>sv', '<C-w>v', { desc = "Split vertically" })
vim.keymap.set('n', '<leader>sh', '<C-w>s', { desc = "Split horizontally" })
vim.keymap.set('n', '<leader>se', '<C-w>=', { desc = "Make splits equal size" })
vim.keymap.set('n', '<leader>sw', '<C-w>q', { desc = "Close current split" })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = "Move to the upper split"})
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = "Move to the lower split"})
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = "Move to the left split"})
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = "Move to the right split"})

--  tabs management
vim.keymap.set('n', '<leader>tt', '<cmd>tabnew<CR>', { desc = "Open new tab" })
vim.keymap.set('n', '<leader>tw', '<cmd>tabclose<CR>', { desc = "Close current tab" })

-- buffers management
vim.keymap.set('n', '<leader>bt', '<cmd>enew<CR>', { desc = "Open new buffer" })
vim.keymap.set('n', '<leader>bd', '<cmd>%bd<CR>', { desc = "Delete all buffers" })
vim.keymap.set('n', '<leader>bw', '<cmd>bdelete<CR>', { desc = "Delete current buffer" })
vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', { desc = "Switch to the next bufferr" })
vim.keymap.set('n', '<S-Tab>', '<cmd>bprev<CR>', { desc = "Switch to the previous bufferr" })

-- Telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = "Find files" })
vim.keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>', { desc = "Find recent files" })
vim.keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<CR>', { desc = "Find string" })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { desc = "Find buffers" })
vim.keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<CR>', { desc = "Find string under cursor" })

-- Auto-session
vim.keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
vim.keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
