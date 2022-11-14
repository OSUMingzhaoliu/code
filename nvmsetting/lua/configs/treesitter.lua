local M = {}
function M.config()
    -- nvim-treesitter config
    require 'nvim-treesitter.configs'.setup {
        ensure_installed = { "c", "cpp", "rust", "lua", "python" }, -- for installing specific parsers
        sync_install = true, -- install synchronously
        ignore_install = {}, -- parsers to not install
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false, -- disable standard vim highlighting
        },
    }
end

return M
