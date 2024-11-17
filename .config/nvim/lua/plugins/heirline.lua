return {
	"rebelot/heirline.nvim",
	opts = function(_, opts)
		opts.winbar = nil
		local status = require("astroui.status")
		opts.statusline = {
			hl = { fg = "fg", bg = "bg" },
			status.component.mode(),
			status.component.git_branch(),
			status.component.file_info({
				filename = { fallback = "Empty" },
				-- disable some of the info
				filetype = false,
				file_read_only = false,
			}),
			status.component.git_diff(),
			status.component.diagnostics(),
			status.component.fill(),
			status.component.cmd_info(),
			status.component.fill(),
			status.component.lsp(),
			status.component.virtual_env(),
			status.component.treesitter(),
			status.component.nav(),
			status.component.mode({ surround = { separator = "right" } }),
		}
	end,
}
