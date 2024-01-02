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
            "ruff",
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
        "jose-elias-alvarez/null-ls.nvim",
        event = "BufReadPre",
        dependencies = { "mason.nvim" },
        config = function()
            local nls = require("null-ls")
            nls.setup({
                sources = {
                    nls.builtins.formatting.stylua,
                    nls.builtins.diagnostics.ruff.with({ extra_args = { "--max-line-length=180" } }),
                },
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
    {
        "MunifTanjim/prettier.nvim",
        dependencies = {
            "jose-elias-alvarez/null-ls.nvim",
        },
        config = function()
            local prettier = require("prettier")
            prettier.setup({
                bin = 'prettier',
                filetypes = {
                    "css",
                    "html",
                    "javascript",
                    "javascriptreact",
                    "json",
                    "less",
                    "markdown",
                    "scss",
                    "typescript",
                    "typescriptreact",
                    "yaml",
                },
            })
        end,
    },
}
