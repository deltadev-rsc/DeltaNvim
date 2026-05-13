require'nvim-web-devicons'.get_icons()

require'nvim-web-devicons'.setup {
    override = {
        zsh = {
            icon = " ",
            color = "#428850",
            cterm_color = "65",
            name = "Zsh"
        },
        c = {
            icon = " ",
            color = "#74C7EC",
            name = "C"
        },
        h = {
            icon = " ",
            color = "#CBA6F7",
            name = "H"
        },
        fortarn = {
            icon = " ",
            color = "#cba6f7",
            name = "Fortarn"
        },
        vim = {
            icon = " ",
            color = "#96C465",
            name = "VimL"
        }
    };
  
    color_icons = true;
    default = false;
    strict = true;
    variant = "dark";
    blend = 0;

    override_by_filename = {
        [".gitignore"] = {
            icon = " ",
            color = "#f1502f",
            name = "Gitignore"
        },

        ["Makefile"] = {
            icon = " ",
            color = "#FAB387",
            name = "make"
        },

        [".vimrc"] = {
            icon = " ",
            color = "#96C465",
            name = "VimL"
        }
    };

    override_by_extension = {
        ["log"] = {
            icon = " ",
            color = "#81e043",
            name = "Log"
        },

        ["asm"] = {
            icon = " ",
            color = "#89B4FA",
            name = "Asm"
        },
    
        ["ld"] = {
            icon = " ",
            color = "#f2cdcd",
            name = "LinkerScript"
        },

        ["map"] = {
            icon = "󰦂 ",
            name = "LinkerMap"
        },

        ["json"] = {
            icon = " ",
            color = "#f9e2af",
            name = "JSON"
        },
    
        ["jsonc"] = {
            icon = " ",
            color = "#f9e2af",
            name = "JSON"
        },
    
        ["cpp"] = {
            icon = " ",
            color = "#74c7ec",
            name = "Cpp"
        },

        ["vim"] = {
            icon = " ",
            color = "#96C465",
            name = "VimL"
        }
    };

    override_by_operating_system = {
        ["apple"] = {
            icon = " ",
            color = "#A2AAAD",
            cterm_color = "248",
            name = "Apple",
        },
        ["linux"] = {
            icon = " ",
            color = "#CDD6F4",
            name = "Linux"
        },
        ["bsd"] = {
            icon = " ",
            color = "#F38BA8",
            name = "FreeBSD"
        },
        ["windows"] = {
            icon = " ",
            color = "#89B4FA",
            name = "Windows"
        }
    };
}
