return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    cmd = { "ConformInfo" },

    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            cpp = { "clang-format" },
            python = { "isort", "black" },
            html = { "prettier" },
            css = { "prettier" },
            javascript = { "prettier", stop_after_first = true },
        },

        default_format_opts = {
            lsp_format = "fallback",
        },

        format_on_save = {
            lsp_fallback = true,
            async = false,
            timeout_ms = 500,
        },

        formatters = {
            shfmt = {
                prepend_args = { "-i", "4" },
            },
        },
    },

    init = function()
        -- If you want the formatexpr, here is the place to set it
        vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
    end,
}
