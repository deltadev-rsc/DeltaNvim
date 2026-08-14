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
