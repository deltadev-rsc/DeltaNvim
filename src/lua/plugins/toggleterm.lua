require("toggleterm").setup{
    size = function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<c-\>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
    on_create = function(t) end, -- function to run when the terminal is first created
    on_open = function(t) end, -- function to run when the terminal opens
    on_close = function(t) end, -- function to run when the terminal closes
    on_stdout = function(t, job, data, name) end, -- callback for processing output on stdout
    on_stderr = function(t, job, data, name) end, -- callback for processing output on stderr
    on_exit = function(t, job, exit_code, name) end, -- function to run when terminal process exits
    hide_numbers = true, -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
    highlights = {
        Normal = {
            guibg = "#181825",
        },

        NormalFloat = {
            link = 'Normal'
        },

        FloatBorder = {
            guifg = "#cdd6f4",
            guibg = "#181825",
        },
    },
    shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
    shading_factor = -15, -- the percentage by which to lighten dark terminal background, default: -30
    shading_ratio = -1, -- the ratio of shading factor for light/dark terminal background, default: -3
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
    persist_size = true,
    persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
    direction = 'float', -- 'horizontal' | 'vertical' | 'tab' | 'float'
    close_on_exit = true, -- close the terminal window when the process exits
    clear_env = false, -- use only environmental variables from `env`, passed to jobstart()
    shell = vim.o.shell,
    auto_scroll = true, -- automatically scroll to the bottom on terminal output
    float_opts = {
        border = 'curved', -- 'single' | 'double' | 'shadow' | 'curved'
        width = 190,
        height = 45,
        row = 9,
        col = 2,
        winblend = 4,
        zindex = 5,
        title_pos = 'center',
    },
    winbar = {
        enabled = false,
        name_formatter = function(term) --  term: Terminal
            return term.name
        end
    },
    responsiveness = {
        -- breakpoint in terms of `vim.o.columns` at which terminals will start to stack on top of each other
        -- instead of next to each other
        -- default = 0 which means the feature is turned off
        horizontal_breakpoint = 135,
    }
}

