require("catppuccin").setup({
    flavour = "auto", 
    background = { 
        light = "latte",
        dark = "mocha",
    },
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
    custom_highlights = function(colors)
        return {
		    Normal =        { bg = "#181825" },
        	NormalFloat =   { bg = "#181825" },
            CmpBorder =     { fg = "#cdd6f4", bg = "#1f1f2e" },
	        TabLineSel =    { bg = colors.flamingo }
        }
    end,
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

vim.cmd([[colorscheme catppuccin]])
