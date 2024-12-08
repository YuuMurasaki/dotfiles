return {
    "echasnovski/mini.pick",
    event = "VeryLazy",
    version = false,

    dependencies = {
        "echasnovski/mini.fuzzy", -- no need to called require("mini.fuzzy").setup()
        "echasnovski/mini.icons",
    },

    config = function()
        -- Setup icons
        require("mini.icons").setup()

        -- Keep window centered
        local win_config = function()
            local height = math.floor(0.7 * vim.o.lines) -- Define the size of pick window
            local width = math.floor(0.7 * vim.o.columns)
            return {
                anchor = "NW",
                height = height,
                width = width,
                row = math.floor(0.5 * (vim.o.lines - height)), -- These ROW and COL keep window center
                col = math.floor(0.5 * (vim.o.columns - width)),
            }
        end

        -- Set up mini.pick with custom window configuration
        require("mini.pick").setup({
            window = {
                config = win_config(), -- Apply the window configuration
            },
        })

        -- Set keymaps
        vim.keymap.set("n", "<leader>ff", "<cmd>Pick files<CR>", { desc = "Find files", silent = true })
        vim.keymap.set("n", "<leader>fr", "<cmd>Pick oldfiles<CR>", { desc = "Find recent files", silent = true })
        vim.keymap.set("n", "<leader>fs", "<cmd>Pick grep_live<cr>", { desc = "Find string", silent = true })
        vim.keymap.set("n", "<leader>fb", "<cmd>Pick buffers<CR>", { desc = "Find buffers", silent = true })
        vim.keymap.set("n", "<leader>fm", "<cmd>Pick marks<CR>", { desc = "Find marks", silent = true })

        -- Make Vim use Mini-pick as UI
        vim.ui.select = MiniPick.ui_select
    end,
}
