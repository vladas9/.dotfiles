-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec

return {
	{
		"christoomey/vim-tmux-navigator",
	},
	{
		"goolord/alpha-nvim",
		opts = function(_, opts)
			-- customize the dashboard header
			opts.section.header.val = {
				"    ███    ██ ██    ██ ██ ███    ███",
				"    ████   ██ ██    ██ ██ ████  ████",
				"    ██ ██  ██ ██    ██ ██ ██ ████ ██",
				"    ██  ██ ██  ██  ██  ██ ██  ██  ██",
				"    ██   ████   ████   ██ ██      ██",
			}
			return opts
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		opts = function(_, opts)
			opts.pickers = {
				find_files = {
					previewer = false,
					layout_config = {
						width = 0.35,
					},
				},
				buffers = {
					previewer = false,
					layout_config = {
						width = 0.35,
					},
				},
				git_files = {
					previewer = false,
					layout_config = {
						width = 0.35,
					},
				},
			}
			return opts
		end,
	},
	{ "nvim-neo-tree/neo-tree.nvim", enabled = false },
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
			require("nvim-tree").setup({
				view = {
					width = 30,
					side = "right",
				},
				renderer = {
					highlight_git = true,
					highlight_opened_files = "all",
					group_empty = true,
					indent_markers = {
						enable = true,
					},
				},
				filters = {
					dotfiles = false,
				},
			})
		end,
	},
	{
		"MunifTanjim/nui.nvim",
	},
	{
		"VonHeikemen/fine-cmdline.nvim",
		config = function()
			vim.keymap.set("n", "<CR>", "<cmd>FineCmdline<CR>", { noremap = true })
		end,
	},
	{
		"VonHeikemen/searchbox.nvim",
		config = function()
			vim.keymap.set("n", "/", ":SearchBoxIncSearch<CR>", { noremap = true, silent = true })
			require("searchbox").setup({
				highlight = {
					enabled = true,
				},
			})
		end,
	},
	{
		"andweeb/presence.nvim",
	},
	{
		"maxmx03/solarized.nvim",
		lazy = false,
		priority = 1000,
		---@type solarized.config
		opts = {
			variant = "summer",
		},
		config = function(_, opts)
			vim.o.termguicolors = true
			vim.o.background = "dark"
			require("solarized").setup(opts)

			-- vim.cmd.colorscheme("solarized")
		end,
	},
	{
		"luisiacc/gruvbox-baby",
		config = function()
			vim.g.gruvbox_baby_background_color = "dark"

			vim.cmd("colorscheme gruvbox-baby")
		end,
	},
}
