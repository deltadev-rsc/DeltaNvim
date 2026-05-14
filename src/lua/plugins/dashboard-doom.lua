require('dashboard').setup({
    theme = 'doom',
    config = {
        header = {
                '',
                '     ███            ██ ████████    ',
                '   ██ ████         ███       ███   ',
                '   ███  ███        ███       ███   ',
                '   ███   ███       ███        ███  ',
                '   ███    ███      ███        ███  ',
                '   ███     ███     ███        ███  ',
                '   ███      ███    ███        ███  ',
                '   ███       ███   ███        ███  ',
                '   ███        ███  ███        ███  ',
                '   ███         ███ ███       ███   ',
                '    ██          ███ ██ ████████    ',
                '',
                '     Welcome to the DeltaNvim!    ',
                '',
        },
        center = {
            {
                icon = ' ',
                icon_hl = 'Title',
                desc = 'Find File           ',
                desc_hl = 'String',
                key = 'f',
                key_hl = 'Number',
                key_format = ' %s', -- remove default surrounding `[]`
                action = 'Telescope find_files'
            },
            {
                icon = ' ',
                desc = 'Open Terminal',
                key = 't',
                key_format = ' %s', -- remove default surrounding `[]`
                action = 'ToggleTerm direction=float'
            },
            {
                icon = '󰈆 ',
                desc = 'Quit',
                key = 'q',
                key_format = ' %s',
                action = 'quit'
            },
            {
                icon = '󱪝 ',
                desc = 'New File',
                key = 'n',
                key_format = ' %s',
                action = 'enew'
            },
            {
                icon = '󱧷 ',
                desc = 'Recent Files',
                key = 'r',
                key_format = ' %s',
                action = 'Telescope oldfiles'
            },
            {
                icon = '󰊢 ',
                desc = 'Git Commits',
                key = 'c',
                key_format = ' %s',
                action = 'Telescope git_commits'
            },
            {
                icon = ' ',
                desc = 'Plugin Manager',
                key = 'p',
                key_format = ' %s',
                action = 'Lazy'
            }, 
        },
        footer = function()
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end, 
    }
})
