return {
    "nvim-mini/mini.pick",
    version = false,
    event = 'VeryLazy',
    config = function()
        local center_win = function()
            local height = math.floor(0.7 * vim.o.lines)
            local width = math.floor(0.7 * vim.o.columns)
            return {
                anchor = 'NW',
                height = height,
                width = width,
                row = math.floor(0.5 * (vim.o.lines - height)),
                col = math.floor(0.5 * (vim.o.columns - width)),
            }
        end

        require("mini.pick").setup({
            window = { config = center_win() },
            mappings = {
                move_down = '<C-j>',
                move_up   = '<C-k>',
            }
        })

        vim.keymap.set('n', '<leader>f', function() 
            require("mini.pick").builtin.files({ tool = 'rg' }) 
        end)
    end
}
