local M = {}

---@param c GruberDarkerColors
---@param opts GruberDarkerConfig
M.setup = function(c, opts)
	return {
		NeoTreeRootName = { fg = c.white, bold = opts.bold, italic = opts.italic.others },
		NeoTreeGitConflict = {
			fg = c.brown,
			bold = opts.bold,
			italic = opts.italic.others,
		},
		NeoTreeGitUntracked = {
			fg = c.brown,
			bold = opts.bold,
			italic = opts.italic.others,
		},
	}
end

return M
