return {
    "stevearc/conform.nvim",
    event = { "LspAttach", "BufReadPost", "BufNewFile" },

    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            cpp = { "clang-format" },
            python = { "isort", "black" },

            html = { "prettier" },
            css = { "prettier" },
            javascript = { "prettier", stop_after_first = true },
        },

        format_on_save = {
            lsp_fallback = true,
            async = false,
        },
    },
}
