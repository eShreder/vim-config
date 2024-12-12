return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  deprecated = {
    'echasnovski/mini.icons'
  },
  config = function()
    local wk = require("which-key")
    wk.setup({
      show_help = false,
      plugins = { spelling = true },
      icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
        ellipsis = "…",
        mappings = false,
      },
    })
  end,
}
