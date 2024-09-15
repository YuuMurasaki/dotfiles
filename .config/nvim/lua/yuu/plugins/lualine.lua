return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'echasnovski/mini.icons',
        'nvim-lua/plenary.nvim'
    },

    config = function()
        local lualine = require("lualine")
        
        local lazy_status = require("lazy.status")
        
        local colors = {
            gray       = '#44475a',
            lightgray  = '#5f6a8e',
            orange     = '#ffb86c',
            purple     = '#bd93f9',
            red        = '#ff5555',
            yellow     = '#f1fa8c',
            green      = '#50fa7b',
            white      = '#f8f8f2',
            black      = '#282a36',
        }

        local my_lualine_theme = {
            normal = {
                a = { bg = colors.purple, fg = colors.black, gui = 'bold' },
                b = { bg = colors.lightgray, fg = colors.white },
                c = { bg = colors.gray, fg = colors.white },
            },
            
            insert = {
                a = { bg = colors.green, fg = colors.black, gui = 'bold' },
                b = { bg = colors.lightgray, fg = colors.white },
                c = { bg = colors.gray, fg = colors.white },
            },

            visual = {
                a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
                b = { bg = colors.lightgray, fg = colors.white },
            },
            
            replace = {
                a = { bg = colors.red, fg = colors.black, gui = 'bold' },
                b = { bg = colors.lightgray, fg = colors.white },
                c = { bg = colors.gray, fg = colors.white },
            },

            command = {
                a = { bg = colors.orange, fg = colors.black, gui = 'bold' },
                b = { bg = colors.lightgray, fg = colors.white },
                c = { bg = colors.gray, fg = colors.white },
            },

            inactive = {
                a = { bg = colors.gray, fg = colors.white, gui = 'bold' },
                b = { bg = colors.lightgray, fg = colors.white },
                c = { bg = colors.gray, fg = colors.white },
            },
        }
    
        -- configuration lualine
        lualine.setup({
            options = {
                theme = my_lualine_theme,
            },
            
            sections = {
                lualine_x = {
                    {
                      lazy_status.updates,
                      cond = function() return lazy_status.has_updates end,
                      color = { fg = "#ffb86c" },
                    },
                
                    { "encoding" },
                    { "fileformat" },
                    { "filetype" },
                },
            },
        })    
    end,
}


