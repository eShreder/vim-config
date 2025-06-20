local M = {}

local servers = {
    pyright = {
        settings = {
            python = {
                analysis = {
                    typeCheckingMode = "off",
                    autoSearchPaths = true,
                    useLibraryCodeForTypes = true,
                    diagnosticMode = "workspace",
                },
            },
        },
    },
    lua_ls = {
        settings = {
            Lua = {
                workspace = {
                    checkThirdParty = false,
                },
                completion = { callSnippet = "Replace" },
                telemetry = { enable = false },
                hint = {
                    enable = false,
                },
            },
        },
    },
    ts_ls = {
        disable_formatting = false,
    },
    dockerls = {},
}

local function lsp_attach(on_attach)
    vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
            local bufnr = args.buf
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            on_attach(client, bufnr)
        end,
    })
end

local function lsp_capabilities()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    return require("cmp_nvim_lsp").default_capabilities(capabilities)
end

function M.setup(_)
    lsp_attach(function(client, buffer)
        require("plugins.lsp.format").on_attach(client, buffer)
        require("plugins.lsp.keymaps").on_attach(client, buffer)
    end)

    -- Setup each server individually to avoid mason-lspconfig issues
    local lspconfig = require("lspconfig")
    local capabilities = lsp_capabilities()
    
    for server_name, server_config in pairs(servers) do
        local opts = vim.tbl_deep_extend("force", {
            capabilities = capabilities,
        }, server_config)
        
        lspconfig[server_name].setup(opts)
    end
end

return M