return {
    "folke/zen-mode.nvim",
    dependencies = {
        "folke/twilight.nvim",
    },

    keys = {
        { "<leader>z", "<cmd>ZenMode<CR>", { noremap = true, silent = true } },
    },

    config = function()
        require("zen-mode").setup()
    end,
}
