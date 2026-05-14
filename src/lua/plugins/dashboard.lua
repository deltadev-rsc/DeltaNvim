require('dashboard').setup {
    theme = 'hyper',
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
        shortcut = {
            { 
                desc = '  New File', 
                group = 'Label', 
                action = 'enew', 
                key = 'n' 
            },
            
            { 
                desc = '  Terminal', 
                group = 'Label', 
                action = 'ToggleTerm direction=float', 
                key= 't' 
            },

            { 
                desc = '  Files', 
                group = 'Label', 
                action = 'Telescope find_files', 
                key = 'f' 
            },
            
            { 
                desc = ' 󰈆 Quit', 
                group = 'Label', 
                action = 'qa', 
                key = 'q' 
            },
            
            { 
                desc = ' 󰊢 Git Commits ', 
                group = 'Label', 
                action = 'Telescope git_commits', 
                key = 'c' 
            },
        },
        footer = {},
    },

    highlight = {
        DashboardHeader = "#A6E3A1"
    },

    hide = {
        statusline = true,       -- hide statusline default is true
        tabline = true,         -- hide the tabline
        winbar = true,          -- hide winbar
    },

    preview = {
        command,          -- preview command
        file_path,        -- preview file path
        file_height,      -- preview file height
        file_width,       -- preview file width
    },
}
