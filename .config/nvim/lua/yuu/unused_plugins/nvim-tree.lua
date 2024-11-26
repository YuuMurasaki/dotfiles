return {
    "nvim-tree/nvim-tree.lua",
    event = "VeryLazy",
    dependencies = "nvim-tree/nvim-web-devicons",

    config = function()
        local nvimtree = require("nvim-tree")

        nvimtree.setup({
            view = {
                width = 30,
            },

            filters = {
                custom = { ".DS_Store" },
            },

            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },

            git = {
                ignore = false,
            },
        })
    end,
}
