vim.lsp.set_log_level("debug")

vim.cmd("lua vim.lsp.enable('clangd')")
vim.cmd("lua vim.lsp.enable('rust-analyzer')")
vim.cmd("lua vim.lsp.enable('bash-language-server')")
vim.cmd("lua vim.lsp.enable('lua-language-server')")
