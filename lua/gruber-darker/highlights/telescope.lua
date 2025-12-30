local M = {}

M.setup = function(c)
	return {
		TelescopeNormal = { fg = c.fg },
		TelescopeMatching = { fg = c.yellow, bold = true },
		TelescopeBorder = { link = "FloatBorder" },
		TelescopePromptPrefix = { fg = c.niagara },

		TelescopeTitle = { fg = c.white, bold = true },

		TelescopeSelection = {
			fg = c.fg_l2,
			bg = c.bg_l1,
		},

		TelescopeMultiSelection = { link = "CursorLine" },
		TelescopeSelectionCaret = { fg = c.yellow },
	}
end

return M
