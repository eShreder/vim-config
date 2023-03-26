return {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    config = function()
        require("gruvbox").setup({
            transparent_mode = false,
            italic = false,
        })
        vim.cmd("colorscheme gruvbox")
    end
}
