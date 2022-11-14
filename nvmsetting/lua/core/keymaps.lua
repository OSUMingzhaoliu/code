-- vim map

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- basics
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

vim.opt.encoding       = 'utf-8'
vim.opt.number         = true
vim.opt.showmatch      = true
vim.opt.hlsearch       = true
vim.opt.incsearch      = true
vim.opt.termguicolors  = true
vim.opt.shiftround     = true
vim.opt.cursorline     = true
vim.opt.smartcase      = true
vim.opt.autowrite      = true
vim.opt.termguicolors  = true
vim.o.timeoutlen       = 300

vim.opt.autoindent     = true
vim.opt.scrolloff      = 4
vim.opt.tabstop        = 4
vim.opt.softtabstop    = 4
vim.opt.expandtab      = true

vim.opt.shiftwidth     = 4
vim.opt.mouse          = 'a'
vim.opt.selection      = 'exclusive'
vim.opt.selectmode     = 'mouse'
vim.opt.autowrite      = false


--
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }
--local opt1 = {noremap = false, silent = false}

map('n', '<F2>', ':NvimTreeToggle<cr>', opt)

vim.keymap.set({ 'n', 'i' }, '<C-p>', function() require 'telescope.builtin'.find_files {} end)
