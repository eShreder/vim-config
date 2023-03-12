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
        },
        config = function()
            set_var("NERDTreeShowHidden", true)
            set_var("NERDTreeIgnore", { ".pyc$", "__pycache__", "^.git", ".sw.$" })
        end,
    },
}
