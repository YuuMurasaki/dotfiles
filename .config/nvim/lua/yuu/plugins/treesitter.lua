return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",

    config = function()
        -- import nvim-treesitter plugin
        local treesitter = require("nvim-treesitter.configs")

        -- configure treesitter
        treesitter.setup({ -- enable syntax highlighting
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },

            -- enable indentation
            indent = { enable = true },

            -- ensure these language parsers are installed, check for parsers at github
            ensure_installed = {
                "markdown",
                "bash",
                "lua",
                "vim",
                "cpp",
            },
        })
    end,
}
