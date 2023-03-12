local wk = require("which-key")
local set_keymap = vim.api.nvim_set_keymap
local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }

-- set current path by current file
set_keymap("n", "<leader>cd", ":cd %:p:h<cr>:pwd<cr>", default_opts)

-- goto buffers and tabs
set_keymap("n", "<S-Right>", ":bprevious<CR>", default_opts)
set_keymap("n", "<S-Left>", ":bnext<CR>", default_opts)
set_keymap("n", "<S-Down>", ":tabprevious<CR>", default_opts)
set_keymap("n", "<S-Up>", ":tabNext<CR>", default_opts)

-- toggle spell-checker
wk.register({
    ["<leader>t="] = {
        { "<cmd>setlocal spell! spelllang=en_us,ru_ru<cr>", "Toggle spell-checker" },
    },
})

-- paste over currently selected text without yanking it
keymap("v", "p", '"_dP')

-- split window
local k = { "h", "j", "k", "l" }
for i = 1, 4 do
    local action = k[i]
    keymap("n", "<C-" .. action .. ">", ':lua require("utils/split").call("' .. action .. '")<cr>', {})
end
