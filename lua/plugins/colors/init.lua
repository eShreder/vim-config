return { {
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  config = function()
    require("gruvbox").setup({
      transparent_mode = false,
      italic = {
      },
    })
    --vim.cmd("colorscheme gruvbox")
  end
},
{
  "navarasu/onedark.nvim",
  lazy = false,
  config = function()
    require("onedark").setup({
    })

    vim.cmd("colorscheme onedark")
  end
}
}
