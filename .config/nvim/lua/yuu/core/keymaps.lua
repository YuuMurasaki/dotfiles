local keymap = vim.keymap

---- USER KEYMAPS ----
-- General
keymap.set('n', '<C-b>', ':source %<CR>', { desc = "Source code" })
keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = "Clear highlights" })

-- windows management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = "Split vertically" })
keymap.set('n', '<leader>sh', '<C-w>s', { desc = "Split horizontally" })
keymap.set('n', '<leader>se', '<C-w>=', { desc = "Make splits equal size" })
keymap.set('n', '<leader>sw', ':close<CR>', { desc = "Close current split" })

--  tabs management
keymap.set('n', '<leader>tt', ':tabnew<CR>', { desc = "Open new tab" })
keymap.set('n', '<leader>tw', ':tabclose<CR>', { desc = "Close current tab" })
keymap.set('n', '<Tab>', ':tabn<CR>', { desc = "Go to previous tab" })
keymap.set('n', '<S-Tab>', ':tabp<CR>', { desc = "Go to next tab" })

-- Neo-tree
keymap.set('n', '`', ':Neotree filesystem reveal left toggle<CR>', { desc = "Open file tree" })

-- Telescope
keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { desc = "Find files" })
keymap.set('n', '<leader>fr', ':Telescope oldfiles<CR>', { desc = "Find recent files" })
keymap.set('n', '<leader>fs', ':Telescope live_grep<CR>', { desc = "Find string" })
keymap.set('n', '<leader>fc', ':Telescope grep_string<CR>', { desc = "Find string under cursor" })

-- Auto-session
keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
    
