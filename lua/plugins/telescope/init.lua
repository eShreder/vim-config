local arc = require('libs/arc')
local plugins = {
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
    },
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        dependencies = {
            "nvim-telescope/telescope-fzf-native.nvim",
        },
        keys = {
            { "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
            { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
            { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
            { "<leader>f/", "<cmd>Telescope live_grep<cr>", desc = "Grep" },
            { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help" },

            { "<leader>fgf", "<cmd>Telescope git_files<cr>", desc = "Git Files" },
            { "<leader>fgs", "<cmd>Telescope git_status<cr>", desc = "Git status" },
        },
        config = function()
            --local actions = require("telescope.actions")
            local telescope = require("telescope")
            telescope.setup({
                defaults = {
                    file_ignore_patterns = {
                        "node_modules/",
                        "**/*.log",
                        "**/*.lock",
                        "**/*.png",
                        "**/*.gz",
                        ".git/",
                        "**/*-lock.json",
                        "**/*-lock.yaml",
                        "releases",
                        "build",
                        "__reports",
                    },
                },
                extensions = {
                    fzf = {
                        fuzzy = true,
                        override_generic_sorter = true,
                        override_file_sorter = true,
                        case_mode = "smart_case",
                    },
                },
            })

            telescope.load_extension("fzf")
            if (arc.has() and arc.branch()) then
                telescope.load_extension("arc")
            end
        end,
    },
}

if (arc.has() and arc.branch()) then
    plugins[#plugins + 1] = {
        dir = "~/projects/arc/arcadia/junk/moonw1nd/lua/telescope-arc.nvim",
        cmd = "Arc",
        keys = {
            { "<leader>fa", "<cmd>Telescope arc ls_files<cr>", desc = "Arc Files" },
            { "<leader>as", "<cmd>Telescope arc status<cr>", desc = "Status" },
            { "<leader>ac", "<cmd>Telescope arc commits<cr>", desc = "Commits" },
            { "<leader>ab", "<cmd>Telescope arc branches<cr>", desc = "Branches" },
            { "<leader>at", "<cmd>Telescope arc stash<cr>", desc = "Stash" },
        },
        config = function()
            vim.cmd("command! -nargs=0 Arcls :Telescope arc ls_files")
            vim.cmd("command! -nargs=0 ArcprMe :lua require('user/arc/funcs').me_prs()")
            vim.cmd("command! -nargs=0 ArcprMy :lua require('user/arc/funcs').my_prs()")
        end,
    }
end

return plugins
