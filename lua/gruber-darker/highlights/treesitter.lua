local M = {}

---@param c GruberDarkerColors
---@param opts GruberDarkerConfig
M.setup = function(c, opts)
	return {
		-- Comments
		["@comment"] = { link = "Comment" },
		["@comment.documentation"] = { fg = c.green, italic = opts.italic.comments },
		["@comment.luadoc"] = { link = "@comment.documentation" },

		-- Errors & none
		["@error"] = {},
		["@none"] = { fg = "NONE", bg = "NONE" },

		-- Preprocessor
		["@preproc"] = { link = "PreProc" },
		["@define"] = { link = "Define" },
		["@operator"] = { link = "Operator" },

		-- Punctuation
		["@punctuation.delimiter"] = { link = "Delimiter" },
		["@punctuation.bracket"] = { fg = c.wisteria },
		["@punctuation.special"] = { fg = c.brown },

		-- Literals
		["@string"] = { link = "String" },
		["@string.documentation"] = { link = "String" },
		["@string.regex"] = { link = "Constant" },
		["@string.escape"] = { link = "Constant" },
		["@string.special"] = { link = "Constant" },
		["@character"] = { link = "Character" },
		["@character.special"] = { link = "Constant" },
		["@boolean"] = { link = "Boolean" },
		["@number"] = { link = "Number" },
		["@float"] = { link = "Float" },

		-- Functions
		["@function"] = { link = "Function" },
		["@function.builtin"] = { fg = c.yellow },
		["@function.macro"] = { link = "Macro" },
		["@method"] = { link = "Function" },
		["@constructor"] = { link = "Function" },
		["@parameter"] = { link = "Identifier" },

		-- Keywords
		["@keyword"] = { link = "Keyword" },
		["@conditional"] = { fg = c.yellow },
		["@conditional.ternary"] = {},
		["@repeat"] = { link = "Repeat" },
		["@debug"] = { link = "Debug" },
		["@label"] = { link = "Label" },

		-- Types
		["@type"] = { link = "Type" },
		["@type.builtin"] = { link = "Type" },
		["@type.definition"] = { link = "Typedef" },
		["@storageclass"] = { link = "StorageClass" },
		["@field"] = { fg = c.niagara },
		["@property"] = { link = "Normal" },

		-- Identifiers
		["@variable"] = { link = "Identifier" },
		["@identifier"] = { link = "Identifier" },
		["@variable.builtin"] = { fg = c.yellow },
		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = { fg = c.yellow },
		["@constant.macro"] = { link = "Define" },

		-- Text
		["@text"] = { link = "Normal" },
		["@text.strong"] = { link = "Bold" },
		["@text.emphasis"] = { link = "Italic" },
		["@text.underline"] = { link = "Underlined" },
		["@text.strike"] = { strikethrough = true },
		["@text.title"] = { link = "Title" },
		["@text.literal"] = { link = "Constant" },
		["@text.uri"] = { fg = c.niagara, underline = opts.underline },
		["@text.reference"] = { fg = c.yellow, bold = opts.bold },
		["@text.todo"] = { link = "Todo" },
		["@text.note"] = { link = "Comment" },
		["@text.warning"] = { link = "WarningMsg" },
		["@text.danger"] = { link = "ErrorMsg" },
		["@text.diff.add"] = { link = "DiffAdd" },
		["@text.diff.delete"] = { link = "DiffDelete" },
		["@text.diff.change"] = { link = "DiffChange" },

		-- Tags
		["@tag"] = { link = "Tag" },
		["@tag.attribute"] = { link = "@field" },
		["@tag.delimiter"] = { link = "Delimiter" },
	}
end

return M
