return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",

    config = function()
        -- import nvim-treesitter plugin
        local treesitter = require "nvim-treesitter.configs"

        -- configure treesitter
        treesitter.setup {
            -- enable syntax highlighting
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },

            -- ensure these language parsers are installed
            ensure_installed = {
                "json",
                "markdown",
                "bash",
                "lua",
                "vim",
                "cpp",
                "c",
            },
        }
    end,
}
