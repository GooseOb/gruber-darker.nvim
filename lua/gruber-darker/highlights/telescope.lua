local M = {}

M.setup = function(c, opts)
	return {
		TelescopeNormal = { fg = c.fg },
		TelescopeMatching = { fg = c.yellow, bold = opts.bold },
		TelescopeBorder = { link = "FloatBorder" },
		TelescopePromptPrefix = { fg = c.niagara },

		TelescopeTitle = { fg = c.white, bold = opts.bold },

		TelescopeSelection = {
			fg = c.fg_l2,
			bg = c.bg_l1,
		},

		TelescopeMultiSelection = { link = "CursorLine" },
		TelescopeSelectionCaret = { fg = c.yellow },
	}
end

return M
