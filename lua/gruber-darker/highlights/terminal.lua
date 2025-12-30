local M = {}

M.setup = function(c)
	return {
		terminal_colors = {
			[0] = c.bg_l1,
			[1] = c.red_l1,
			[2] = c.green,
			[3] = c.yellow,
			[4] = c.niagara,
			[5] = c.wisteria,
			[6] = c.niagara,
			[7] = c.fg,
			[8] = c.bg_l1,
			[9] = c.red_l1,
			[10] = c.green,
			[11] = c.yellow,
			[12] = c.niagara,
			[13] = c.wisteria,
			[14] = c.niagara,
			[15] = c.fg,
			background = c.bg_l1,
			foreground = c.white,
		},
	}
end

return M
