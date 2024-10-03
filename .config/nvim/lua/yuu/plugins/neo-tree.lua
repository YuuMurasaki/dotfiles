return {
    "nvim-neo-tree/neo-tree.nvim",
    even = "VeryLazy",
    branch = "v3.x",
    
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", 
        "MunifTanjim/nui.nvim",
    },

    config = function()
        require("neo-tree").setup({
            window = {
                position = "left",
                width = 30,
                mapping_options = {
                    noremap = true,
                    nowait = true,
                },
            },
        })
    end,
}
