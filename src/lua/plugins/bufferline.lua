vim.opt.termguicolors = true
local mocha = require("catppuccin.palettes").get_palette "mocha"

require('bufferline').setup{
    options = {
--        separator_style = "slope", -- { '', '' },
        custom_filter = function(buf_number)
        if vim.bo[buf_number].filetype ~= "neo-tree" then
            return true
        end
            return false
        end,
    
        offsets = {
            {
                filetype = "neo-tree",
                text = "󰙅 File Explorer",
                highlight = "Directory",
                separator = true 
            },
        },
    },
}
