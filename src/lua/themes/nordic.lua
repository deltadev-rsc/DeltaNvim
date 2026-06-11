require('nordic').setup({
    on_palette = function(palette) end,
    after_palette = function(palette) end,
    on_highlight = function(highlights, palette) end,
    bold_keywords = false,
    italic_comments = true,
    transparent = {
        bg = false,
        float = false
    },

    bright_border = true,
    reduced_blue = true,
    swap_backgrounds = false,
    
    cursorline = {
        bold = true,
        bold_number = true,
        theme = 'dark',
        blend = 1.0
    },
    
    visual = {
        bold = true,
        bold_number = true,
        theme = 'dark',
        blend = 1.0
    },

    noice = {
        style = 'flat'
    },

    telescope = {
        style = 'flat'
    },

    leap = {
        dim_backdrop = false
    },

    ts_context = {
        dark_background = true
    }
})

vim.cmd([[colorscheme nordic]])
