-- настройка и список плагинов для установки
require('core.plugins')
require('core.mappings')
require('core.options')

-- темы 
require('themes.catp')
require('themes.kanagawa')
require('themes.gruv')
require('themes.everf')
require('themes.nordic')
require('themes.dracula')
require('themes.rose-pine')
require('themes.tokyo-night')

-- LSP сервера для языков. В main.lua они как раз запускаются с конфигами.
require('lsp.main')

-- плагины
require('plugins.barbecue')
require('plugins.bufferline')
require('plugins.cmp')
require('plugins.dapui')
require('plugins.dashboard-doom')
--- Or: require('plugins.dashboard-hyper') ---
require('plugins.icons')
require('plugins.lualine')
require('plugins.mason')
require('plugins.minimap')
require('plugins.neotree')
require('plugins.themery')
require('plugins.telescope')
--- Or: require('plugins.fff')
require('plugins.treesitter')
