return {
    {
        "echasnovski/mini.ai",
        version = false,
        event = "VeryLazy",

        config = function()
            require("mini.ai").setup()
        end,
    },
    {
        "echasnovski/mini.indentscope",
        version = false,
        event = { "BufReadPre", "BufNewFile" },

        config = function()
            require("mini.indentscope").setup()
        end,
    },
    {
        "echasnovski/mini.jump",
        version = false,
        event = "VeryLazy",

        config = function()
            require("mini.jump").setup()
        end,
    },
    {
        "echasnovski/mini.pairs",
        version = false,
        event = { "InsertEnter" },

        config = function()
            require("mini.pairs").setup()
        end,
    },
}
