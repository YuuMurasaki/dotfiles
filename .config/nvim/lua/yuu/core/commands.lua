-- User define commands --
-- C++
vim.api.nvim_create_user_command("CompileRunCpp", "!clang++ -o2 -Wall -Wextra -Wpedantic -Werror % -o %< && ./%<", {})
vim.api.nvim_create_user_command("CompileCpp", "!clang++ -o2 -Wall -Wextra -Wpedantic -Werror % -o %<", {})
vim.api.nvim_create_user_command("RunCpp", "!./%<", {})

-- Compile
vim.keymap.set("n", "<F9>", "<cmd>CompileCpp<CR>", { desc = "Compile C++ code" })
vim.keymap.set("n", "<F10>", "<cmd>RunCpp<CR>", { desc = "Run compiled C++ code" })
vim.keymap.set("n", "<F11>", "<cmd>CompileRunCpp<CR>", { desc = "Compile and run C++ code" })
