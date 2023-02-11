local getCurrent = vim.api.nvim_get_current_win
local cmd = vim.cmd
local vCmd = "jk"

local function split(key)
    local currentId = getCurrent()
    cmd("wincmd " .. key)

    if currentId == getCurrent() then
        if vCmd:find(key) then
            cmd("split")
        else
            cmd("vsplit")
        end

        cmd("wincmd " .. key)
    end
end

return { call = split }
