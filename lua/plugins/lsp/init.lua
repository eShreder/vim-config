return {
    {
        "neovim/nvim-lspconfig",
        event = "BufReadPre",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lsp-signature-help",
        },
        config = function(plugin)
            require("plugins.lsp.servers").setup(plugin)
        end,
    },
    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
        ensure_installed = {
            "stylua",
            -- "ruff",
            "prettier"
        },
        config = function(plugin)
            require("mason").setup()
            local mr = require("mason-registry")
            for _, tool in ipairs(plugin.ensure_installed) do
                local p = mr.get_package(tool)
                if not p:is_installed() then
                    p:install()
                end
            end
        end,
    },
    {
        "nvimtools/none-ls.nvim",
        event = "BufReadPre",
        dependencies = { "mason.nvim" },
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua,
                    -- null_ls.builtins.diagnostics.ruff.with({ extra_args = { "--max-line-length=180" } }),
                    null_ls.builtins.formatting.prettier,
                },
                on_attach = function(client, bufnr)
                    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>F', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', { noremap = true, silent = true, desc = "Format" })
                end,
            })
        end,
    },
    {
        "utilyre/barbecue.nvim",
        event = "VeryLazy",
        dependencies = {
            "neovim/nvim-lspconfig",
            "SmiteshP/nvim-navic",
        },
        config = true,
    },
}
