local M = {}

M.setup = function(c)
	return {
		RainbowDelimiterRed = { fg = c.red_l1 },
		RainbowDelimiterOrange = { fg = c.brown },
		RainbowDelimiterYellow = { fg = c.yellow },
		RainbowDelimiterGreen = { fg = c.green },
		RainbowDelimiterBlue = { fg = c.niagara },
		RainbowDelimiterViolet = { fg = c.wisteria },
		RainbowDelimiterCyan = { fg = c.quartz },
	}
end

return M
