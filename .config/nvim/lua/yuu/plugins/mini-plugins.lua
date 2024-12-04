return {
    {
        "echasnovski/mini.extra",
        event = "VeryLazy",
        version = false,

        config = function()
            require("mini.extra").setup()
        end,
    },
    {
        "echasnovski/mini.ai",
        version = false,
        event = { "BufReadPre", "BufNewFile" },

        config = function()
            require("mini.ai").setup()
        end,
    },
    {
        "echasnovski/mini.jump",
        version = false,
        event = { "BufReadPre", "BufNewFile" },

        config = function()
            require("mini.jump").setup()
        end,
    },
    {
        "echasnovski/mini.surround",
        version = false,
        event = { "BufReadPre", "BufNewFile" },

        config = function()
            require("mini.surround").setup()
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
    {
        "echasnovski/mini.statusline",
        version = false,

        config = function()
            require("mini.statusline").setup()
        end,
    },
    {
        "echasnovski/mini.indentscope",
        event = { "BufReadPre", "BufNewFile" },
        version = false,

        config = function()
            require("mini.indentscope").setup({
                draw = {
                    delay = 0,
                    animation = require("mini.indentscope").gen_animation.none(),
                },

                mappings = {
                    object_scope = "",
                    object_scope_with_border = "",
                },
            })
        end,
    },
}
