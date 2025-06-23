return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- Опционально, для иконок
		cmd = "FzfLua",
		config = function()
			local fzf = require("fzf-lua")
			local actions = require("fzf-lua.actions")
			fzf.setup({
				winopts = {
					height = 0.85,
					width = 0.80,
					preview = {
						layout = "vertical",
					},
				},
				fzf_opts = {
					["--layout"] = "reverse",
				},
				actions = {
					files = {
						["default"] = actions.file_edit_or_qf,
						["ctrl-s"] = actions.file_split,
						["ctrl-v"] = actions.file_vsplit,
						["ctrl-t"] = actions.file_tabedit,
						["ctrl-q"] = actions.file_sel_to_qf,
					},
					buffers = {
						["default"] = actions.buf_edit,
						["ctrl-s"] = actions.buf_split,
						["ctrl-v"] = actions.buf_vsplit,
						["ctrl-t"] = actions.buf_tabedit,
					},
				},
				files = {
					prompt = "Files❯ ",
					multiprocess = true,
					git_icons = true,
					file_icons = true,
					color_icons = true,
					find_opts = [[-type f -not -path '*/\.git/*' -not -path '*/node_modules/*']],
					rg_opts = [[--color=never --files --hidden --follow -g '!.git' -g '!node_modules']],
				},
				buffers = {
					prompt = "Buffers❯ ",
					file_icons = true,
					color_icons = true,
					sort_lastused = true,
					cwd_only = false,
					cwd = nil,
					actions = {
						["ctrl-x"] = { actions.buf_del, actions.resume },
					},
				},
				grep = {
					prompt = "Rg❯ ",
					input_prompt = "Grep For❯ ",
					git_icons = true,
					file_icons = true,
					color_icons = true,
					hidden = false,
					follow = false,
					no_ignore = false,
					grep_opts = "--binary-files=without-match --line-number --recursive --color=auto --perl-regexp -e",
					rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=4096 -e",

					-- grep_opts = "--glob '!.git' --glob '!node_modules' --binary-files=without-match --line-number --recursive --color=auto -e ",
					-- rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=512 --glob '!.git' --glob '!node_modules'",
				},
				git = {
					status = {
						prompt = "Git Status❯ ",
						cmd = "git status --porcelain=v1 --untracked-files=all",
						file_icons = true,
						git_icons = true,
						color_icons = true,
						preview_pager = "delta --width=$FZF_PREVIEW_COLUMNS",
					},
				},
				lsp = {
					prompt_postfix = "❯ ",
					cwd_only = false,
					async_or_timeout = 5000,
					file_icons = true,
					git_icons = false,
					color_icons = true,
					includeDeclaration = true,
				},
				diagnostics = {
					prompt = "Diagnostics❯ ",
					cwd_only = false,
					file_icons = true,
					git_icons = false,
					color_icons = true,
					diag_icons = true,
				},
				previewers = {
					builtin = {
						syntax = true,
						syntax_limit_b = 1024 * 100,
						syntax_limit_l = 1000,
					},
				},
			})
		end,
		keys = {
			{ "<leader>f", desc = "FzfLua" },
			{ "<leader>ff", "<cmd>FzfLua files<CR>", desc = "Find Files" },
			{ "<leader>f/", "<cmd>FzfLua live_grep<CR>", desc = "Grep" },
			{ "<leader>fr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent" },
			{ "<leader>fb", "<cmd>FzfLua buffers<CR>", desc = "Buffers" },
			{ "<leader>fh", "<cmd>FzfLua help_tags<CR>", desc = "Help" },

			{ "<leader>fg", desc = "Git" },
			{ "<leader>fgb", "<cmd>FzfLua git_branches<cr>", desc = "Git Branches" },
			{ "<leader>fgf", "<cmd>FzfLua git_files<cr>", desc = "Git Files" },
			{ "<leader>fgs", "<cmd>FzfLua git_status<cr>", desc = "Git status" },
			{ "<leader>fgB", "<cmd>FzfLua git_blame<cr>", desc = "Git blame" },
			{ "<leader>fgS", "<cmd>FzfLua git_stash<cr>", desc = "Git stash" },
		},
	},
}
