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
