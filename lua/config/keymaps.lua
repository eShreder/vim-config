local wk = require("which-key")
local default_opts = { noremap = true, silent = true }

wk.register({
    -- set current path by current file
    c = {
        name = "Actions",
        ["d"] = { ":cd %:p:h<cr>:pwd<cr>", "set current dir" },
    },
    -- toggle spell-checker
    t = {
        name = "Toggles",
        ["="] = { "<cmd>setlocal spell! spelllang=en_us,ru_ru<cr>", "Toggle spell-checker" },
    }
}, { prefix = "<leader>" })

-- goto buffers and tabs
vim.api.nvim_set_keymap("n", "<S-Right>", ":bprevious<CR>", default_opts)
vim.api.nvim_set_keymap("n", "<S-Left>", ":bnext<CR>", default_opts)
vim.api.nvim_set_keymap("n", "<S-Down>", ":tabprevious<CR>", default_opts)
vim.api.nvim_set_keymap("n", "<S-Up>", ":tabNext<CR>", default_opts)

-- paste over currently selected text without yanking it
vim.keymap.set("v", "p", '"_dP')

-- split window
local k = { "h", "j", "k", "l" }
for i = 1, 4 do
    local action = k[i]
    vim.keymap.set("n", "<C-" .. action .. ">", ':lua require("utils/split").call("' .. action .. '")<cr>', {})
end
