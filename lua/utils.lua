local M = {}
local api = vim.api

function M.map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend("force", options, opts) end
    api.nvim_set_keymap(mode, lhs, rhs, options)
end

return M
