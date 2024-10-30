return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme catppuccin]])
        end,
    },

    {
        "folke/tokyonight.nvim",
        name = "tokyo-night",
        priority = 1000,
    },

    {
        "tanvirtin/monokai.nvim",
        name = "monokai",
        priority = 1000,
    },
    
    {
        "Mofiqul/dracula.nvim",
        name = "dracula",
        priority = 1000,
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
    },
}
