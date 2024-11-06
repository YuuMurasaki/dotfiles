return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },

    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
        { "folke/lazydev.nvim", opts = {} },
    },

    config = function()
        -- import lspconfig plugin
        local lspconfig = require("lspconfig")

        -- import cmp-nvim-lsp plugin
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(ev)
                -- Buffer local mappings.
                -- See `:help vim.lsp.*` for documentation on any of the below functions
                local opts = { buffer = ev.buf, silent = true }

                -- set keybinds
                opts.desc = "Smart rename"
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

                opts.desc = "See available code actions"
                vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

                opts.desc = "Show buffer diagnostics"
                vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

                opts.desc = "Restart LSP"
                vim.keymap.set("n", "<leader>rs", "<cmd>LspRestart<CR>", opts) -- mapping to restart lsp if necessary
            end,
        })

        -- used to enable autocompletion (assign to every lsp server config)
        local capabilities = cmp_nvim_lsp.default_capabilities()

        -- Change the Diagnostic symbols in the sign column (gutter)
        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        require("mason-lspconfig").setup_handlers({
            -- Default handler for all installed LSP servers
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = capabilities,
                })
            end,

            -- Custom handler for clangd
            ["clangd"] = function()
                lspconfig.clangd.setup({
                    capabilities = capabilities,

                    -- Clangd-specific settings
                    cmd = { "clangd", "--background-index", "--clang-tidy" },  -- Use clang-tidy for diagnostics
                    filetypes = { "c", "cpp", "objc", "objcpp" },  -- Supported filetypes
                    settings = {
                        clangd = {
                            -- Enable clang-tidy checks through clangd
                            diagnostic = {
                                clangTidy = true,  -- Enable clang-tidy diagnostics
                            },
                            -- Enable auto-formatting on save
                            format = {
                                enable = true,
                            },
                            -- You can set additional clangd settings here
                        },
                    },
                })
            end,
        })
    end,
}
