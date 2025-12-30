local M = {}

---@alias ColorSpec string RGB Hex string
---@alias ColorTable table<string, ColorSpec>

--- default config
---@class GruberDarkerConfig
M.config = {
	transparent = false,
	terminalColors = true,
	bold = true,
	invert = {
		signs = false,
		tabline = false,
		visual = false,
	},
	---@type table<string, boolean>|false
	italic = {
		strings = true,
		comments = true,
		operators = false,
		folds = true,
	},
	undercurl = true,
	underline = true,
	---@type fun(colors: ColorTable): table<string, table>
	overrides = function(colors)
		return {}
	end,
}

---@param config? GruberDarkerConfig user configuration
M.setup = function(config)
	if config and config.italic == false then
		config.italic = {
			strings = false,
			comments = false,
			operators = false,
			folds = false,
		}
	end

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
