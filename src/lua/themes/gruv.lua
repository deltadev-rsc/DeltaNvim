-- For gruvbox and gruvbox-material

require('gruvbox-material').setup({
    italics = true,             -- enable italics in general
    contrast = "hard",        -- set contrast, can be any of "hard", "medium", "soft"
    
    comments = {
        italics = true,           -- enable italic comments
    },
    
    background = {
        transparent = false,      -- set the background to be opaque
    },
    
    float = {
        force_background = false, -- set to true to force backgrounds on floats even when
        background_color = nil,   -- set color for float backgrounds. If nil, uses the default color set
    },
  
    signs = {
        force_background = false, -- set to true to force backgrounds on signs even when
        background_color = nil,   -- set color for sign backgrounds. If nil, uses the default color set
    },
    customize = nil,
})

require("gruvbox").setup({
    terminal_colors = true, -- add neovim terminal colors
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "hard", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
})

vim.cmd([[colorscheme gruvbox]])
