return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    event = "VeryLazy",

    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, --move the prev result
                        ["<C-j>"] = actions.move_selection_next, --move the next result
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
            },
        })

        telescope.load_extension("fzf")

        -- set keymaps
        vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = "Find files" })
        vim.keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>', { desc = "Find recent files" })
        vim.keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<CR>', { desc = "Find string" })
        vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { desc = "Find buffers" })
        vim.keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<CR>', { desc = "Find string under cursor" })
    end,
}
