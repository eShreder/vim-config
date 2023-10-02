return {{
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  config = function()
    require("gruvbox").setup({
      transparent_mode = false,
      italic = {
      },
    })
    vim.cmd("colorscheme gruvbox")
  end
}, {
  "ayu-theme/ayu-vim",
  lazy = false,
  config = function()
    vim.cmd("colorscheme ayu")
  end
}}
