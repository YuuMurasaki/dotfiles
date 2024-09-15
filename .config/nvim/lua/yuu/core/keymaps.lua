local keymap = vim.keymap

---- USER KEYMAPS ----
-- General
keymap.set('n', '<C-b>', ':source %<CR>', { desc = "Source code" })
keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = "Clear highlights" })

-- windows management
keymap.set('n', '<leader>sv', '<C-w>v', { desc = "Split vertically" })
keymap.set('n', '<leader>sh', '<C-w>s', { desc = "Split horizontally" })
keymap.set('n', '<leader>se', '<C-w>=', { desc = "Make splits equal size" })
keymap.set('n', '<leader>sx', ':close<CR>', { desc = "Close current split" })

--  tabs management
keymap.set('n', '<C-t>', ':tabnew<CR>', { desc = "Open new tab" })
keymap.set('n', '<C-w>', ':tabclose<CR>', { desc = "Close current tab" })
keymap.set('n', '<C-h>', ':tabp<CR>', { desc = "Go to previous tab" })
keymap.set('n', '<C-l>', ':tabn<CR>', { desc = "Go to next tab" })

-- Neo-tree
keymap.set('n', '`', ':Neotree filesystem reveal left toggle<CR>', { desc = "Open file tree" })

-- Telescope
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = "Find files" })
keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>', { desc = "Find recent files" })
keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<CR>', { desc = "Find string" })
keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<CR>', { desc = "Find string under cursor" })
