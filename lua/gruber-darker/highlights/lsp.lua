local M = {}

M.setup = function(c)
	return {
		-- Errors
		DiagnosticError = { fg = c.red, bold = true },
		DiagnosticSignError = { fg = c.red },
		DiagnosticUnderlineError = { sp = c.red, underline = true },

		-- Warnings
		DiagnosticWarn = { fg = c.yellow, bold = true },
		DiagnosticSignWarn = { fg = c.yellow },
		DiagnosticUnderlineWarn = { sp = c.yellow, underline = true },

		-- Info
		DiagnosticInfo = { fg = c.green, bold = true },
		DiagnosticSignInfo = { fg = c.green },
		DiagnosticUnderlineInfo = { sp = c.green, underline = true },

		-- Hints
		DiagnosticHint = { fg = c.wisteria },
		DiagnosticSignHint = { fg = c.wisteria },
		DiagnosticUnderlineHint = { sp = c.wisteria, underline = true },

		-- Unnecessary / faded hint
		DiagnosticUnnecessary = { sp = c.wisteria, underline = true },

		-- Saga
		SagaNormal = { link = "NormalFloat" },
		SagaBorder = { link = "FloatBorder" },
	}
end

return M
