return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    event = "VeryLazy",

    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
        },
        "nvim-tree/nvim-web-devicons",
        "stevearc/dressing.nvim",
    },

    config = function()
        local telescope = require "telescope"
        local actions = require "telescope.actions"

        telescope.setup {
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, --move the prev result
                        ["<C-j>"] = actions.move_selection_next, --move the next result
                    },
                },
            },
        }

        telescope.load_extension "fzf"

        -- set keymaps
        vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files", silent = true })
        vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Find recent files", silent = true })
        vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "Find string", silent = true })
        vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor", silent = true })
        vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers", silent = true })
        vim.keymap.set("n", "<leader>fm", "<cmd>Telescope marks<CR>", { desc = "Find marks", silent = true })
        vim.keymap.set("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Find in current buffer" })
    end,
}
