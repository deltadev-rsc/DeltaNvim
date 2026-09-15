require("barbecue").setup({
    ---@type barbecue.Config.theme
    theme = "auto", 

    ---@type barbecue.Config.kinds
    kinds = {
        File = "",
        Module = "",
        Namespace = "",
        Package = "",
        Class = "",
        Method = "",
        Property = "",
        Field = "",
        Constructor = "",
        Enum = "",
        Interface = "",
        Function = "",
        Variable = "",
        Constant = "",
        String = "",
        Number = "",
        Boolean = "",
        Array = "",
        Object = "",
        Key = "",
        Null = "",
        EnumMember = "",
        Struct = "",
        Event = "",
        Operator = "",
        TypeParameter = "",
    },

    ---@type boolean
    attach_navic = true,

    ---@type boolean
    create_autocmd = true,

     ---@type string[]
    include_buftypes = { "" },

    ---@type string[]
    exclude_filetypes = { "netrw", "toggleterm" },

    modifiers = {
        ---@type string
        dirname = ":~:.",

        ---@type string
        basename = "",
    },

    ---@type boolean
    show_dirname = true,

    ---@type boolean
    show_basename = true,

    ---@type boolean
    show_modified = false,

    ---@type fun(bufnr: number): boolean
    modified = function(bufnr) 
        return vim.bo[bufnr].modified 
    end,

    ---@type boolean
    show_navic = true,

    ---@type fun(bufnr: number, winnr: number): barbecue.Config.custom_section
    lead_custom_section = function() return " " end,
})

