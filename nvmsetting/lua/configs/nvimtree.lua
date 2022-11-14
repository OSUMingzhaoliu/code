vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
-- vim.opt.termguicolors = true
local M = {}
function M.config()
    require("nvim-tree").setup({
        sort_by = "case_sensitive",
        view = {
            adaptive_size = true, 
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        },
    })
end

return M



