return {
    { -- Compiler plugin
        "zeioth/compiler.nvim",

        cmd = {
            "CompilerOpen",
            "CompilerToggleResults",
            "CompilerRedo",
            "CompilerStop",
        },

        dependencies = {
            "stevearc/overseer.nvim",
            "nvim-telescope/telescope.nvim",
        },

        opts = {},
    },

    { -- Overseer [task runner]
        "stevearc/overseer.nvim",

        cmd = {
            "OverseerOpen",
            "OverseerClose",
            "OverseerToggle",
            "OverseerSaveBundle",
            "OverseerLoadBundle",
            "OverseerDeleteBundle",
            "OverseerRunCmd",
            "OverseerRun",
            "OverseerInfo",
            "OverseerBuild",
            "OverseerQuickAction",
            "OverseerTaskAction",
            "OverseerClearCache",
        },

        opts = {
            task_list = { -- the window that shows the results.
                direction = "bottom",
                min_height = 10,
                max_height = 10,
                default_detail = 1,
            },
        },
    },
}
