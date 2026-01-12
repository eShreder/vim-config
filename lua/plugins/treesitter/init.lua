return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        main = "nvim-treesitter",
        opts = {
            ensure_installed = {
                "lua",
                "python",
                "javascript",
                "typescript",
                "html",
                "css",
                "json",
                "yaml",
                "markdown",
                "bash",
            },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        },
    },
    -- NOTE: Temporarily disabled - incompatible with new nvim-treesitter API
    -- Re-enable after nvim-treesitter-textobjects updates to support new API
    -- {
    --     "nvim-treesitter/nvim-treesitter-textobjects",
    --     event = "VeryLazy",
    --     dependencies = "nvim-treesitter/nvim-treesitter",
    --     main = "nvim-treesitter-textobjects",
    --     opts = {
    --         select = {
    --             enable = true,
    --             lookahead = true,
    --             keymaps = {
    --                 ["af"] = "@function.outer",
    --                 ["if"] = "@function.inner",
    --                 ["ac"] = "@class.outer",
    --                 ["ic"] = "@class.inner",
    --                 ["aa"] = "@parameter.outer",
    --                 ["ia"] = "@parameter.inner",
    --             },
    --         },
    --         move = {
    --             enable = true,
    --             set_jumps = true,
    --             goto_next_start = {
    --                 ["]f"] = "@function.outer",
    --                 ["]c"] = "@class.outer",
    --             },
    --             goto_next_end = {
    --                 ["]F"] = "@function.outer",
    --                 ["]C"] = "@class.outer",
    --             },
    --             goto_previous_start = {
    --                 ["[f"] = "@function.outer",
    --                 ["[c"] = "@class.outer",
    --             },
    --             goto_previous_end = {
    --                 ["[F"] = "@function.outer",
    --                 ["[C"] = "@class.outer",
    --             },
    --         },
    --     },
    -- },
}