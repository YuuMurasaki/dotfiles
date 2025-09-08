return {
    'MeanderingProgrammer/render-markdown.nvim',
    event = 'VeryLazy',

    config = function()
        require('render-markdown').setup({})
        vim.keymap.set('n', '<leader>r', function()
            require('render-markdown').toggle()
        end)
    end
}
