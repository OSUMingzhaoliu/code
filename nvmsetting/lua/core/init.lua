require("core.keymaps")
require("core.plugins")
require("core.theme")
require("impatient")

require("configs.nvimtree").config()
require("configs.treesitter").config()
require("configs.autocomplete").config()
require("configs.mason").config()
require("configs.symbols_outline").config()
require("configs.bufferline").config()

--require("core.keymaps")
--require("core.dvorak")	-- delete this line if you don't like using DVORAK
--require("core.gui")
-- disable some useless standard plugins to save startup time
-- these features have been better covered by plugins
--vim.g.loaded_matchparen        = 1
--vim.g.loaded_matchit           = 1
--vim.g.loaded_logiPat           = 1
--vim.g.loaded_rrhelper          = 1
--vim.g.loaded_tarPlugin         = 1
--vim.g.loaded_gzip              = 1
--vim.g.loaded_zipPlugin         = 1
--vim.g.loaded_2html_plugin      = 1
--vim.g.loaded_shada_plugin      = 1
--vim.g.loaded_spellfile_plugin  = 1
--vim.g.loaded_netrw             = 1
--vim.g.loaded_netrwPlugin       = 1
--vim.g.loaded_tutor_mode_plugin = 1
--vim.g.loaded_remote_plugins    = 1
--require("core.theme")

--require('image').setup {
--	min_padding = 5,
--	show_label = true,
--	render_using_dither = true,
--}

-- Load plugin configs
-- plugins without extra configs are configured directly here
--require('satellite').setup()

--require("configs.autocomplete").config()
--require("configs.symbols_outline").config()
--require("configs.statusline").config()
--require("configs.filetree").config()
--require("configs.treesitter").config()
--require("configs.startscreen").config()
--require("configs.git").config()
--require("configs.bufferline").config()
--require("configs.grammar").config()
--require("configs.terminal").config()
