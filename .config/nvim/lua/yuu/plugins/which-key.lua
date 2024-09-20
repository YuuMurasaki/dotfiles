return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 1000
    end,
    
    opts = {
        --paste your configuration here
        --or leave to use deafault settings
        --see which-key for more options
    },
}
