-- User define commands
vim.api.nvim_create_user_command('RunCpp', '!g++ % -o %< && ./%<', {})
