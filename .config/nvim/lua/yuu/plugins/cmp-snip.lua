return {
    "hrsh7th/nvim-cmp",
    version = false,
    event = { "InsertEnter" },

    dependencies = {
        "hrsh7th/cmp-buffer", -- source for text in buffer
        "hrsh7th/cmp-path", -- source for file system paths

        { -- snippets engine
            "L3MON4D3/LuaSnip",
            version = "v2.*",
            build = "make install_jsregexp",
        },

        "saadparwaiz1/cmp_luasnip", -- for autocompletion
        "onsails/lspkind.nvim", -- vs-code like pictograms
    },

    config = function()
        local cmp = require "cmp"
        local luasnip = require "luasnip"
        local lspkind = require "lspkind"

        -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
        require("luasnip.loaders.from_vscode").lazy_load { paths = "~/.config/nvim/lua/yuu/snippets" }

        cmp.setup {
            completion = {
                completeopt = "menu,menuone,preview,noselect",
            },

            snippet = { -- configure how nvim-cmp interacts with snippet engine
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },

            mapping = {
                ["<C-u>"] = cmp.mapping.scroll_docs(4),
                ["<C-d>"] = cmp.mapping.scroll_docs(-4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-c>"] = cmp.mapping.close(),

                -- Super Tab function
                ["<CR>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        if luasnip.expandable() then
                            luasnip.expand()
                        else
                            cmp.confirm {
                                select = true,
                            }
                        end
                    else
                        fallback()
                    end
                end),

                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.locally_jumpable(1) then
                        luasnip.jump(1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),

                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.locally_jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            },

            -- sources for autocompletion
            sources = cmp.config.sources {
                { name = "nvim_lsp" }, -- LSP suggestions
                { name = "luasnip" }, -- snippets
                { name = "buffer" }, -- text within current buffer
                { name = "path" }, -- file system paths
            },

            -- configure lspkind for vs-code like pictograms in completion menu
            formatting = {
                format = lspkind.cmp_format {
                    maxwidth = 50,
                    ellipsis_char = "...",
                },
            },
        }
    end,
}
