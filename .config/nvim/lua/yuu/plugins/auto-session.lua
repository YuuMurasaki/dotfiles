return {
    "rmagatti/auto-session",

    keys = {
        { "<leader>wr", "<cmd>SessionRestore<CR>", desc = "Restore session for cwd" },
        { "<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session for auto session root dir" },
    },

    config = function()
        local auto_session = require("auto-session")

        auto_session.setup({
            auto_restore = false,
            auto_save = false,
            suppress_dirs = { "~/", "~/Downloads", "~/Documents", "~/Desktop/" },
        })
    end,
}
