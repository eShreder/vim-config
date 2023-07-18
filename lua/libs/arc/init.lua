-- check available arc on sh
local function has_command()
    local has = io.popen("command -v arc"):read()
    return has and true or false
end

-- try get current branch on arc
local function get_branch()
    local branch = io.popen("arc info --json 2> /dev/null | jq '.branch'"):read()
    return branch and string.match(branch, '^"(.*)"$') or nil
end

local function openByLink(str)
    if not has_command() then
        return
    end
    local fileName = string.match(str, "yandex[-]team.ru/arcadia([^?#]+)")
    local root = io.popen("arc root"):read()
    vim.cmd("e " .. root .. fileName)
end

return {
    has = has_command,
    branch = get_branch,
    openLink = openByLink,
}
