vim.cmd([[highlight clear LineNr]])

vim.wo.number = true
vim.wo.relativenumber = true

vim.g.did_load_filetypes = 1
vim.g.formatoptions = "qrn1"
vim.opt.showmode = false
vim.opt.updatetime = 100
vim.wo.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.wo.linebreak = true
vim.opt.virtualedit = "block"
vim.opt.undofile = true
vim.opt.shell = "/usr/bin/zsh" -- or "/usr/bin/fish"

vim.opt.mouse = "a"
vim.opt.mousefocus = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.clipboard = "unnamedplus"

vim.opt.shortmess:append("c")

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

require("catppuccin").setup({
    flavour = "auto", 
    background = { 
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, 
    float = {
        transparent = false, 
        solid = false, 
    },
    show_end_of_buffer = false, 
    term_colors = false, 
    dim_inactive = {
        enabled = false, 
        shade = "dark",
        percentage = 0.15, 
    },
    no_italic = false, 
    no_bold = false,
    no_underline = false, 
    styles = { 
        comments = { "italic" }, 
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        
    },
    lsp_styles = { 
        virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
            ok = { "italic" },
        },
        underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
            ok = { "underline" },
        },
        inlay_hints = {
            background = true,
        },
    },
    color_overrides = {},
    custom_highlights = {},
    default_integrations = true,
    auto_integrations = false,
    integrations = {
        cmp = true,
        gitsigns = true,
        gitgutter = true,
        nvimtree = true,
        neotree = true,
        dashboard = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        lualine = {
            all = function(colors)
            
                ---@type CtpIntegrationLualineOverride
                return {
                    normal = { 
                        a = { bg = colors.lavender, gui = "italic" },
                        b = { fg = colors.lavender },
                    }
                }
            end,
            macchiato = { 
                normal = { 
                    a = { bg = "#abcdef" },
                }
            },
        },
    }        
})

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

require("everforest").setup({
    background = "hard",
    transparent_background_level = 0,
    italics = true,
    disable_italic_comments = false,
    sign_column_background = "none",
    ui_contrast = "low",
    dim_inactive_windows = false,
    diagnostic_text_highlight = true,
    diagnostic_virtual_text = "coloured",
    diagnostic_line_highlight = false,
    spell_foreground = false,
    show_eob = true,
    float_style = "bright",
    inlay_hints_background = "none",
    on_highlights = function(highlight_groups, palette) end,
    colours_override = function(palette) end,
})

require('gruvbox-material').setup({
    italics = true,             -- enable italics in general
    contrast = "medium",        -- set contrast, can be any of "hard", "medium", "soft"
    
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
    terminal_colors = false, 
    undercurl = false,
    underline = true,
    bold = false,
    italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
    },
    strikethrough = false,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    inverse = false, 
    contrast = "medium", 
    palette_overrides = {},
    overrides = {},
    dim_inactive = true,
    transparent_mode = false,
})

require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { 
        italic = true 
    },
    functionStyle = {},
    keywordStyle = { 
        italic = true
    },
    statementStyle = { 
        bold = true 
    },
    typeStyle = {},
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {}
    end,
    theme = "wave",              -- Load "wave" theme
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
})

vim.cmd("colorscheme kanagawa")
vim.cmd("colorscheme catppuccin")
vim.cmd([[colorscheme gruvbox]])
vim.cmd([[colorscheme everforest]])
vim.cmd([[colorscheme nordic]])
vim.o.background = "dark"
