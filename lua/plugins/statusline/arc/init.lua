local arc = require('libs/arc')
local require = require('lualine_require').require
local current_arc_branch = nil

local get_current_branch = function()
    return current_arc_branch and ' ' .. current_arc_branch or ''
end

local update_current_branch = function()
    current_arc_branch = arc.has() and arc.branch() or nil
end

local init = function()
    update_current_branch()

    vim.api.nvim_create_autocmd("BufEnter", {
        callback = update_current_branch
    })
end

return {
    init = init,
    update_current_branch = update_current_branch,
    get_branch = get_current_branch,
}

