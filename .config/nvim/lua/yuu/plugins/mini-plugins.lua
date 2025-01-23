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
    {
        "echasnovski/mini.hipatterns",
        version = false,
        event = { "BufReadPre", "BufNewFile" },

        config = function()
            local hipatterns = require("mini.hipatterns")
            hipatterns.setup({
                highlighters = {
                    -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
                    fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
                    hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
                    todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
                    note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },

                    -- Highlight hex color strings (`#rrggbb`) using that color
                    hex_color = hipatterns.gen_highlighter.hex_color(),
                },
            })
        end,
    },
}
