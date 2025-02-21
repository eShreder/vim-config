local arc = require('libs/arc')

local plugins = { }

if (arc.has() and arc.branch()) then
  plugins[#plugins + 1] = {
    dir = "~/projects/arc/arcadia/junk/moonw1nd/lua/telescope-arc.nvim",
    cmd = "Arc",
    keys = {
      { "<leader>faa", "<cmd>Telescope arc ls_files<cr>", desc = "Arc Files" },
      { "<leader>fas", "<cmd>Telescope arc status<cr>",   desc = "Status" },
      { "<leader>fac", "<cmd>Telescope arc commits<cr>",  desc = "Commits" },
      { "<leader>fab", "<cmd>Telescope arc branches<cr>", desc = "Branches" },
      { "<leader>fat", "<cmd>Telescope arc stash<cr>",    desc = "Stash" },
    },
    config = function()
      vim.cmd("command! -nargs=0 Arcls :Telescope arc ls_files")
      vim.cmd("command! -nargs=0 ArcprMe :lua require('user/arc/funcs').me_prs()")
      vim.cmd("command! -nargs=0 ArcprMy :lua require('user/arc/funcs').my_prs()")
    end,
  }
end

return plugins
