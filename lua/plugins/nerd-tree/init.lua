local set_keymap = vim.api.nvim_set_keymap
local set_var = vim.api.nvim_set_var
local default_opts = { noremap = true, silent = true }

return {
    {
        "scrooloose/nerdtree",
        cmd = "NERDTree",
        keys = {
            { "<C-n>", "<cmd>NERDTreeToggle<cr>", desc = "NERDTreeToggle" },
            { "<leader>n", "<cmd>NERDTreeFind<cr>", desc = "NERDTreeFind" },
            { "<leader>cd", ":cd %:p:h<cr>:pwd<cr>", desc = "Go to pwd" },
        },
        config = function()
            set_var("NERDTreeShowHidden", true)
            set_var("NERDTreeIgnore", { ".pyc$", "__pycache__", "^.git", ".sw.$" })
            set_keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
            set_keymap("n", "<S-l>", ":bnext<CR>", default_opts)
            set_keymap("n", "<S-k>", ":tabprevious<CR>", default_opts)
        end,
    },
}
