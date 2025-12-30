local M = {}

M.config = {
	transparent = false,
	-- TODO
	terminalColors = true,
	italic = {},
	invert = {},
	overrides = function(colors)
		return {}
	end,
}

M.setup = function(config)
	M.config = vim.tbl_deep_extend("force", M.config, config or {})
end

M.load = function()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "gruber-darker"
	vim.o.termguicolors = true

	local colors = require("gruber-darker.colors")
	local term = require("gruber-darker.highlights.terminal").setup(colors, M.config)
	local highlights = require("gruber-darker.highlights").setup(colors, M.config)
	require("gruber-darker.highlights").highlight(highlights, M.config.terminalColors and term or {})
end

return M
