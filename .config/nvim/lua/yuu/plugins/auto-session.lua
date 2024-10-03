return {
    "rmagatti/auto-session",
    
    config = function()
        local auto_session = require("auto-session")

        auto_session.setup({
            auto_restore = false,
            auto_save = true,
            suppress_dirs = { "~/", "~/Downloads", "~/Documents", "~/Desktop/" },
        })
   end,
}
