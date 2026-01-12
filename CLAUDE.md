# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a modular Neovim configuration using lazy.nvim as the plugin manager. The configuration emphasizes performance through lazy loading and clean organization.

## Key Commands

### Plugin Management
- `:Lazy` or `<leader>z` - Open lazy.nvim plugin manager UI
- `:Mason` or `<leader>cm` - Manage LSP servers/formatters
- `:Lazy sync` - Update all plugins to match lazy-lock.json

### Formatting
- `<leader>F` - Format current buffer (none-ls: Stylua for Lua, Prettier for JS/TS/HTML/CSS)
- `<leader>cf` - Toggle format-on-save (disabled by default)

### Fuzzy Finding (fzf-lua)
- `<leader>ff` - Find files
- `<leader>f/` - Live grep
- `<leader>fr` - Recent files
- `<leader>fb` - Buffers
- `<leader>fh` - Help tags
- `<leader>fgs` - Git status
- `<leader>fgb` - Git branches

### LSP Navigation
- `gd` - Go to definition
- `gr` - Find references
- `gI` - Go to implementation
- `K` - Hover documentation
- `<leader>ca` - Code action
- `<leader>cr` - Rename symbol
- `<leader>cs` - Document symbols
- `[d`/`]d` - Previous/next diagnostic
- `[e`/`]e` - Previous/next error

### Development
- When modifying LSP configuration: Check `lua/plugins/lsp/servers.lua` for server configurations
- When adding new plugins: Create a new file in `lua/plugins/` following the existing pattern

## Architecture

### Configuration Loading Order
1. `init.lua` loads `config.options` (basic vim options)
2. `config.lazy` initializes the plugin manager
3. All plugins in `lua/plugins/` are auto-loaded by lazy.nvim
4. `config.autocmds`, `config.keymaps`, and `config.commands` are loaded on VeryLazy event

### Plugin Organization Pattern
Each plugin configuration in `lua/plugins/` returns a table with lazy.nvim spec:
```lua
return {
  {
    "plugin/repo",
    event = "VeryLazy",  -- or specific events for lazy loading
    dependencies = {},
    config = function()
      -- setup code
    end,
    keys = {}  -- lazy-loaded keybindings
  }
}
```

### LSP Architecture
- `lua/plugins/lsp/init.lua` - Main LSP setup, loads none-ls for formatting
- `lua/plugins/lsp/servers.lua` - Server configurations (pyright, lua_ls, ts_ls, dockerls)
- `lua/plugins/lsp/keymaps.lua` - LSP keybindings attached per-buffer
- `lua/plugins/lsp/format.lua` - Format-on-save logic (autoformat disabled by default)

### Custom Libraries
- `libs/arc/` - Integration with Arc (Yandex VCS). The `:A` command opens files from Arc URLs
- `utils/split.lua` - Smart window splitting: `<C-h/j/k/l>` moves to window or creates split if none exists

## Claude Code Integration
- `<leader>ac` - Toggle Claude Code terminal
- `<leader>af` - Focus Claude terminal
- `<leader>ar` - Resume previous Claude session
- `<leader>aC` - Continue Claude conversation
- `<leader>ab` - Add current buffer to Claude context
- `<leader>as` - Send visual selection to Claude (visual mode) / Add file from tree (in file explorer)
- `<leader>aa` - Accept diff
- `<leader>ad` - Deny diff

## GitHub Copilot Integration
Uses copilot.lua with copilot-cmp integration:
- `<M-l>` - Accept suggestion
- `<M-k>` - Accept word
- `<M-]>` / `<M-[>` - Next/previous suggestion
- `<C-]>` - Dismiss suggestion
- `<M-CR>` - Open Copilot panel

Copilot is disabled for: yaml, markdown, help, gitcommit, gitrebase

## Important Notes
- All plugins are lazy-loaded by default for performance
- LSP servers are configured directly via lspconfig (bypassing mason-lspconfig issues)
- Uses fzf-lua for fuzzy finding (migrated from Telescope)
- The configuration uses which-key for discoverable keybindings with `<leader>` as the primary prefix
