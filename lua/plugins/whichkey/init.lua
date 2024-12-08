return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
        local wk = require("which-key")
        wk.setup({
            show_help = false,
            plugins = { spelling = true },
        })
    end,
}
