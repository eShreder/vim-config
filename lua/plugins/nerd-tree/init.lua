return {
    {
        "scrooloose/nerdtree",
        cmd = "NERDTree",
        keys = {
            { "<C-n>",     "<cmd>NERDTreeToggle<cr>", desc = "NERDTreeToggle" },
            { "<leader>n", "<cmd>NERDTreeFind<cr>",   desc = "NERDTreeFind" },
        },
        config = function()
            vim.api.nvim_set_var("NERDTreeShowHidden", true)
            vim.api.nvim_set_var("NERDTreeIgnore", {
                ".pyc$",
                "__pycache__",
                "^.git",
                ".sw.$"
            })
        end,
    },
}
