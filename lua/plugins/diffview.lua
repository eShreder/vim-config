return {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
    keys = {
        { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview Open" },
        { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File History" },
        { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "Branch History" },
        { "<leader>gq", "<cmd>DiffviewClose<cr>", desc = "Diffview Close" },
    },
    opts = {
        view = {
            default = {
                layout = "diff2_horizontal",
            },
            merge_tool = {
                layout = "diff3_mixed",
            },
        },
    },
}
