return {
    "rmagatti/auto-session",

    keys = {
        { "<leader>wr", "<cmd>SessionRestore<CR>", desc = "Restore session" },
        { "<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session" },
        { "<leader>wf", "<cmd>SessionSearch<CR>", desc = "Session search" },
    },

    config = function()
        require("auto-session").setup {
            auto_restore = false,
            auto_save = false,
            suppress_dirs = { "~/", "~/Downloads", "~/Documents", "~/Desktop" },
        }
    end,
}
