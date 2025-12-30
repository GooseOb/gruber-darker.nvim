local c = require("gruber-darker.colors")
local transparent = require("gruber-darker.utils.transparent")(require("gruber-darker").config.transparent)

local M = {}

M.normal = {
	a = { bg = c.green, fg = c.bg },
	b = { bg = c.bg_l2, fg = c.green },
	c = { bg = transparent(c.bg_l1), fg = c.fg },
}

M.insert = {
	a = { bg = c.yellow, fg = c.bg },
	b = { bg = c.bg, fg = c.yellow },
}

M.command = {
	a = { bg = c.wisteria, fg = c.bg },
	b = { bg = c.bg, fg = c.wisteria },
}

M.visual = {
	a = { bg = c.red, fg = c.bg },
	b = { bg = c.bg, fg = c.red },
}

M.replace = {
	a = { bg = c.brown, fg = c.bg },
	b = { bg = c.bg, fg = c.brown },
}

M.inactive = {
	a = { bg = c.bg_l2, fg = c.fg_l2 },
	b = { bg = c.red, fg = c.fg_l2, gui = "bold" },
	c = { bg = transparent(c.bg_l1), fg = c.fg_l2 },
}

if vim.g.gruber_darker_lualine_bold then
	for _, mode in pairs(M) do
		mode.a.gui = "bold"
	end
end

return M
