return {
    "williamboman/mason.nvim",

    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },

    config = function()
        -- enable mason and configure icons
        require("mason").setup()

        require("mason-lspconfig").setup({
            ensure_installed = {
                "clangd",
                "lua_ls",
            },
        })

        require("mason-tool-installer").setup({
            ensure_installed = {
                "stylua",
                "clang-format",
                "cpplint",
            },
        })
    end,
}
