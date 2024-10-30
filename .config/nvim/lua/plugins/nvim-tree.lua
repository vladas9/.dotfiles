return {
	"nvim-tree/nvim-tree.lua",
	requires = {
		"nvim-tree/nvim-web-devicons",
	},

	vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true }),
	opts = function(_, opts)
		opts.view = {
			width = 30,
			side = "right",
			adaptive_size = true,
		}
		opts.renderer = {
			highlight_git = true,
			highlight_opened_files = "all",
			group_empty = true,
			indent_markers = {
				enable = true,
			},
		}
		opts.filters = {
			dotfiles = false,
		}

		return opts
	end,
}
