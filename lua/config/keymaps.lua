local wk = require("which-key")
local keymap = vim.keymap.set

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP')

-- Split window
local k = { "h", "j", "k", "l" }
for i = 1, 4 do
    local action = k[i]
    keymap("n", "<C-" .. action .. ">", ':lua require("utils/split").call("' .. action .. '")<cr>', {})
end

-- toggle spell-checker
wk.register({
    ["<leader>t="] = {
        { "<cmd>setlocal spell! spelllang=en_us,ru_ru<cr>", "Toggle spell-checker" },
    },
})
