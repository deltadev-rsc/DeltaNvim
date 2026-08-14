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

-- LSP сервера для языков. В main.lua они как раз запускаются с конфигами.
require('lsp.main')

-- плагины
require('plugins.neotree')
require('plugins.treesitter')
require('plugins.cmp')
require('plugins.mason')
require('plugins.lualine')
require('plugins.bufferline')
require('plugins.dashboard-doom')
require('plugins.dapui')
require('plugins.themery')
require('plugins.icons')
require('plugins.telescope')
require('plugins.minimap')
