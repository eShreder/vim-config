local wk = require("which-key")
local default_opts = { noremap = true, silent = true }

wk.add({
    -- set current path by current file
    { "<leader>c", group = "Actions" },
    { "<leader>cd", ":cd %:p:h<cr>:pwd<cr>", desc = "set current dir" },
    { "<leader>cf", function() require("plugins.lsp.format").toggle() end, desc = "toggle format on save" },
    { "<leader>cp", "<cmd>Copilot panel<cr>", desc = "copilot panel" },
    { "<leader>ct", "<cmd>Copilot toggle<cr>", desc = "toggle copilot" },
})

    -- toggle spell-checker
    -- t = {
    --     name = "Toggles",
    --     ["="] = { "<cmd>setlocal spell! spelllang=en_us,ru_ru<cr>", "Toggle spell-checker" },
    -- }

-- goto buffers and tabs
vim.api.nvim_set_keymap("n", "<S-Right>", ":bnext<CR>", default_opts)
vim.api.nvim_set_keymap("n", "<S-Left>", ":bprevious<CR>", default_opts)
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
