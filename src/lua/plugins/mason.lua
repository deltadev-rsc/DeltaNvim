---@class MasonSettings
require("mason").setup({
    ---@type '"prepend"' | '"append"' | '"skip"'
    path = "prepend",
    log_level = vim.log.levels.INFO,
    max_concurrent_installers = 4,

    registers = {
        "github:mason-org/mason-registry"
    },

    system_registers = {
        "github:mason-org/mason-system-registry"
    },

    registry_cache = {
        refresh = true,
        duration = 24 * 60 * 60
    },

    firewall = {
        enabled = false,
        auto_managed = true
    },

    providers = {
        "mason.providers.registry-api",
        "mason.providers.client"
    },

    github = {
        download_url_template = "https://github.com/%s/releases/download/%s/%s"
    },

    pip = {
        upgrade_pip = false,
        install_args = {},
    },

    npm = {
        install_args = {},
    },

    ui = {
        check_outdated_packages_on_open = true,
        border = nil,
        backdrop = 60,
        width = 0.8,
        height = 0.9, 

        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
