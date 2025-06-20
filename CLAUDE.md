# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a modular Neovim configuration using lazy.nvim as the plugin manager. The configuration emphasizes performance through lazy loading and clean organization.

## Key Commands

### Plugin Management
- `:Lazy` or `<leader>z` - Open lazy.nvim plugin manager UI
- `:Mason` or `<leader>cm` - Manage LSP servers
- `:Lazy sync` - Update all plugins to match lazy-lock.json

### Formatting
- `<leader>F` - Format current buffer (uses null-ls with Stylua for Lua, Prettier for JS/TS/HTML/CSS, Ruff for Python)

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

### Custom Libraries
- `libs/arc/` - Integration with Arc (Yandex VCS). The `:A` command opens Arc URLs
- `utils/` - Helper functions for window splitting and path operations

## Claude Code Integration
- `<leader>ac` - Toggle Claude Code terminal
- `<leader>as` - Send visual selection to Claude
- `<leader>aa` - Add current file to Claude context
- `<leader>ar` - Add files from file tree to Claude context

## GitHub Copilot Integration
- `<M-l>` - Accept Copilot suggestion (in insert mode)
- `<M-]>` - Next Copilot suggestion
- `<M-[>` - Previous Copilot suggestion
- `<C-]>` - Dismiss Copilot suggestion
- `<leader>cp` - Open Copilot panel
- `<leader>ct` - Toggle Copilot on/off

## Important Notes
- All plugins are lazy-loaded by default for performance
- LSP servers are configured directly via lspconfig (bypassing mason-lspconfig issues)
- Recently migrated from Telescope to fzf-lua for fuzzy finding
- Copilot plugin was recently removed
- The configuration uses which-key for discoverable keybindings with `<leader>` as the primary prefix