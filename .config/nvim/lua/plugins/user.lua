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
	{ "nvim-neo-tree/neo-tree.nvim", enabled = false },
	-- { "which-key.nvim",              enabled = false },
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
		"luisiacc/gruvbox-baby",
		config = function()
			vim.g.gruvbox_baby_background_color = "dark"

			vim.cmd("colorscheme gruvbox-baby")
		end,
	},
}
