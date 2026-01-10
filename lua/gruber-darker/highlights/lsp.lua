local M = {}

---@param c GruberDarkerColors
---@param opts GruberDarkerConfig
M.setup = function(c, opts)
	return {
		-- Errors
		DiagnosticError = { fg = c.red, bold = opts.bold },
		DiagnosticSignError = { fg = c.red },
		DiagnosticUnderlineError = { sp = c.red, underline = opts.underline },

		-- Warnings
		DiagnosticWarn = { fg = c.yellow, bold = opts.bold },
		DiagnosticSignWarn = { fg = c.yellow },
		DiagnosticUnderlineWarn = { sp = c.yellow, underline = opts.underline },

		-- Info
		DiagnosticInfo = { fg = c.green, bold = opts.bold },
		DiagnosticSignInfo = { fg = c.green },
		DiagnosticUnderlineInfo = { sp = c.green, underline = opts.underline },

		-- Hints
		DiagnosticHint = { fg = c.wisteria },
		DiagnosticSignHint = { fg = c.wisteria },
		DiagnosticUnderlineHint = { sp = c.wisteria, underline = opts.underline },

		-- Unnecessary / faded hint
		DiagnosticUnnecessary = { sp = c.wisteria, underline = opts.underline },

		-- Saga
		SagaNormal = { link = "NormalFloat" },
		SagaBorder = { link = "FloatBorder" },
	}
end

return M
