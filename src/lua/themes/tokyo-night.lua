---@class tokyonight.Config
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: tokyonight.Highlights, colors: ColorScheme)
require("tokyonight").setup({
    style = "night",
    light_style = "day",
    transparent = false,
    terminal_colors = true,
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
    },

    day_brightness = 0.3,
    dim_inactive = false,
    lualine_bold = false,
})
