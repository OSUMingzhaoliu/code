local M = {}
function M.config()
    -- nvim-treesitter config
    require 'mason'.setup()
    require 'mason-lspconfig'.setup({
        ensure_installed = {"clangd", "jedi_language_server", "vimls", "sumneko_lua"}
    })
end

return M
