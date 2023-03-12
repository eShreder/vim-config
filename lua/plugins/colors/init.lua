return {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    config = function()
        require("gruvbox").setup({
              transparent_mode = false,
        })
        vim.cmd("colorscheme gruvbox")
    end
}
