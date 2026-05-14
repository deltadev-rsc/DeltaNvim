require('mini.map').setup({
    integrations = nil,
    symbols = {
        encode = nil,
        scroll_line = '█',
        scroll_view = '┃',
    },
    window = {
        focusable = false,
        side = 'right',
        show_integration_count = true,
        width = 15,
        winblend = 25,
        zindex = 10,
    },
})

MiniMap.open({nil})
