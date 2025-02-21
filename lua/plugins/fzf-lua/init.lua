return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Опционально, для иконок
    cmd = "FzfLua",
    config = function()
      require("fzf-lua").setup({
        winopts = {
          height = 0.85,
          width = 0.80,
          preview = {
            layout = "vertical",
          },
        },
        fzf_opts = {
          ["--layout"] = "reverse",
        },
      })
    end,
    keys = {
      {"<leader>f", desc = "FzfLua" },
      {"<leader>ff", "<cmd>FzfLua files<CR>", desc = "Find Files" },
      {"<leader>f/", "<cmd>FzfLua live_grep<CR>", desc = "Grep"},
      {"<leader>fr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent"},
      {"<leader>fb", "<cmd>FzfLua buffers<CR>", desc = "Buffers"},
      {"<leader>fh", "<cmd>FzfLua help_tags<CR>", desc = "Help"},

      { "<leader>fg", desc = "Git" },
      { "<leader>fgb", "<cmd>FzfLua git_branches<cr>", desc = "Git Branches" },
      { "<leader>fgf", "<cmd>FzfLua git_files<cr>", desc = "Git Files" },
      { "<leader>fgs", "<cmd>FzfLua git_status<cr>", desc = "Git status" },
      { "<leader>fgB", "<cmd>FzfLua git_blame<cr>", desc = "Git blame" },
      { "<leader>fgS", "<cmd>FzfLua git_stash<cr>", desc = "Git stash" },
    }
  },
}
