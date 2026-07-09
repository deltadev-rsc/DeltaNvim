vim.lsp.set_log_level("debug")

vim.lsp.config('rust-analyzer', {
    settings = {
        ['rust-analyzer'] = {},
    },
    capabilities = {
        offsetEncoding = { "utf-8", "utf-16" },
        textDocument = {
            completion = {
                editsNearCursor = true
            }
        }
    },
    cmd = { "rust-analyzer" },
    filetypes = { "rs" }
})


vim.lsp.config('clangd', {
    cmd = { "clangd" },
    filetypes = {
        "c",
        "cpp",
        "objc",
        "objcpp",
        "cuda"
    },
    
    root_markers = {
        ".clangd",
        ".clangd-tidy",
        ".clangd-format",
        "compile_commands.json",
        "compile_flags.txt",
        "configure.ac",
        ".git"
    },

    capabilities = {
        offsetEncoding = {
            "utf-8",
            "utf-16"
        },
        textDocument = {
            completion = {
                editsNearCursor = true
            }
        }
    }
})

vim.lsp.config('bash-language-server', {
    cmd = { 'bash-language-server', 'start' },
    filetypes = { 'bash', 'sh' },
})

vim.lsp.config('lua-language-server', {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
})
