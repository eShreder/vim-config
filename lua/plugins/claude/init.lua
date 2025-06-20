return {
    "coder/claudecode.nvim",
    event = "VeryLazy",
    config = true,
    keys = {
        { "<leader>a", nil, desc = "AI/Claude Code" },
        { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
        { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
        { "<leader>aa", "<cmd>ClaudeCodeAdd<cr>", desc = "Add file to Claude" },
        { "<leader>ar", "<cmd>ClaudeCodeTreeAdd<cr>", desc = "Add from tree", ft = { "NvimTree", "neo-tree" } },
    },
}