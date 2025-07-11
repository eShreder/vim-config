return {
    {
        "nvim-lualine/lualine.nvim",
        event = "UIEnter",

        config = function()
            local components = require("plugins.statusline.components")
            local arc = require("plugins.statusline.arc")
            arc.init()

            require("lualine").setup({
                options = {
                    -- icons_enabled = false,
                    theme = "auto",
                    component_separators = {},
                    section_separators = {},
                    disabled_filetypes = {
                        statusline = { "alpha", "lazy" },
                        winbar = {
                            "help",
                            "alpha",
                            "lazy",
                        },
                    },
                    always_divide_middle = true,
                    globalstatus = true,
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch", arc.get_branch },
                    lualine_c = { components.diff, components.diagnostics, components.separator, components.lsp_client },
                    lualine_x = { "filename", components.spaces, "encoding", "fileformat", "filetype", "progress" },
                    lualine_y = {},
                    lualine_z = { "location" },
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = { "filename" },
                    lualine_x = { "location" },
                    lualine_y = {},
                    lualine_z = {},
                },
                extensions = { "nvim-tree", "toggleterm", "quickfix" },
            })
        end,
    },
}
