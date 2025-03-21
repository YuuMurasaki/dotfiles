return {
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
        opts = {
            modes = { insert = true, command = true, terminal = false },
            -- skip autopair when next character is one of these
            skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
            -- skip autopair when the cursor is inside these treesitter nodes
            skip_ts = { "string" },
            -- skip autopair when next character is closing pair
            -- and there are more closing pairs than opening pairs
            skip_unbalanced = true,
            -- better deal with markdown code blocks
            markdown = true,
        },
        config = function(_, opts)
            require("mini.pairs").setup(opts)
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
            require("mini.indentscope").setup {
                draw = {
                    delay = 0,
                    animation = require("mini.indentscope").gen_animation.none(),
                },

                mappings = {
                    object_scope = "",
                    object_scope_with_border = "",
                },
            }
        end,
    },
}
