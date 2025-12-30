local M = {}

M.setup = function(c, opts)
	local transparent = require("gruber-darker.utils.transparent")(opts.transparent)

	return {
		-- Core UI
		Comment = { fg = c.brown, italic = opts.italic.comments },
		ColorColumn = { bg = c.bg_l2 },
		Conceal = { fg = c.fg, bg = c.bg },

		Cursor = { bg = c.yellow },
		lCursor = { fg = "NONE", bg = c.yellow },
		CursorIM = { fg = "NONE", bg = c.yellow },

		CursorColumn = { bg = c.bg_l2 },
		CursorLine = { bg = opts.transparent and c.niagara_d2 or c.bg_l1 },

		Directory = { fg = c.niagara, bold = true },

		-- Diff
		DiffAdd = { fg = c.green },
		DiffChange = { fg = c.yellow },
		DiffDelete = { fg = c.red_l1 },
		DiffText = { fg = c.yellow },

		diffAdded = { fg = c.green },
		diffRemoved = { fg = c.red_l1 },
		diffLine = { fg = c.yellow },

		GitSignsAdd = { fg = c.green },
		GitSignsChange = { fg = c.yellow },
		GitSignsDelete = { fg = c.red_l1 },

		-- Misc
		EndOfBuffer = { fg = c.bg_l4 },
		TermCursor = { bg = c.yellow },

		ErrorMsg = { fg = c.white, bg = c.red },

		VertSplit = { fg = c.fg_l2, bg = c.bg_l1 },
		WinSeparator = { fg = c.bg_l2, bold = opts.bold },

		Folded = { fg = c.brown, bg = c.bg_l2, italic = opts.italic.folds },
		FoldColumn = { fg = c.brown, bg = c.bg_l2 },

		SignColumn = { fg = c.bg_l2 },

		LineNr = { fg = c.bg_l4 },
		CursorLineNr = { fg = c.yellow },

		MatchParen = { fg = c.fg, bg = c.wisteria },

		ModeMsg = { fg = c.fg_l1 },
		MoreMsg = { fg = c.fg_l2 },

		NonText = { fg = c.bg_l4 },

		Normal = { fg = c.fg, bg = transparent(c.bg) },
		NormalNC = { fg = c.fg, bg = transparent(c.bg) },
		NormalSB = { fg = c.fg, bg = c.bg_d1 },
		NormalFloat = { fg = c.fg, bg = transparent(c.bg_l1) },
		FloatBorder = { fg = c.bg_l4 },

		-- Popup
		Pmenu = { fg = c.fg, bg = c.bg_l1 },
		PmenuSel = { fg = c.fg, bg = c.bg_l2 },
		PmenuSbar = { bg = c.bg },
		PmenuThumb = { bg = c.bg },

		Question = { fg = c.niagara },
		QuickFixLine = { bg = c.bg_l2, bold = opts.bold },

		-- Search
		Search = { fg = c.black, bg = c.yellow },
		IncSearch = { fg = c.black, bg = c.fg_l2 },
		CurSearch = { fg = c.black, bg = c.fg_l2 },

		SpecialKey = { fg = c.fg_l2 },

		-- Spell
		SpellBad = { sp = c.red, underline = true },
		SpellCap = { undercurl = opts.undercurl },
		SpellLocal = { undercurl = opts.undercurl },
		SpellRare = { undercurl = opts.undercurl },

		-- Statusline
		-- TODO
		StatusLine = { fg = c.white, bg = transparent(c.bg_l1) },
		StatusLineNC = { fg = c.quartz, bg = transparent(c.bg_l1) },

		-- Tabline
		TabLine = {},
		TabLineFill = { fg = c.bg_l4, bg = transparent(c.bg_l1) },
		TabLineSel = { fg = c.yellow, bold = opts.bold },

		Title = { fg = c.quartz },

		Visual = { bg = c.bg_l2, reverse = opts.invert.visual },
		VisualNOS = { fg = c.red },

		WarningMsg = { fg = c.red },

		Whitespace = { fg = c.bg_l4 },
		WildMenu = { fg = c.black, bg = c.yellow },

		-- Syntax
		Constant = { fg = c.quartz },
		String = { fg = c.green, italic = opts.italic.strings },
		Character = { fg = c.green, italic = opts.italic.strings },
		Number = { fg = c.wisteria },
		Boolean = { fg = c.yellow, bold = true },
		Float = { fg = c.wisteria },

		Identifier = { fg = c.fg_l1 },
		Function = { fg = c.niagara },

		Statement = { fg = c.yellow },
		Conditional = { fg = c.yellow, bold = true },
		Repeat = { fg = c.yellow, bold = true },
		Label = { fg = c.yellow, bold = true },
		Operator = { fg = c.fg, italic = opts.italic.operators },
		Keyword = { fg = c.yellow, bold = true },
		Exception = { fg = c.yellow, bold = true },

		PreProc = { fg = c.quartz },
		Include = { fg = c.quartz },
		Define = { fg = c.quartz },
		Macro = { fg = c.quartz },
		PreCondit = { fg = c.quartz },

		Type = { fg = c.quartz },
		StorageClass = { fg = c.yellow, bold = true },
		Structure = { fg = c.yellow, bold = true },
		Typedef = { fg = c.yellow, bold = true },

		Special = { fg = c.yellow },
		SpecialChar = { fg = c.yellow },
		Tag = { fg = c.yellow },
		Delimiter = { fg = c.fg },
		SpecialComment = { fg = c.wisteria, bold = true },
		Debug = { fg = c.fg_l2 },

		Underlined = { fg = c.wisteria, underline = opts.underline },
		Bold = { bold = opts.bold },
		Italic = { italic = true },

		Todo = { fg = c.bg, bg = c.yellow },

		-- Markdown
		markdownHeadingDelimiter = { fg = c.niagara, bold = opts.bold },
		markdownCode = { fg = c.green },
		markdownCodeBlock = { fg = c.green },
		markdownItalic = { fg = c.wisteria, italic = true },
		markdownBold = { fg = c.yellow, bold = true },
		markdownCodeDelimiter = { fg = c.brown, italic = true },
		markdownError = { fg = c.fg, bg = c.bg_l1 },
	}
end

return M
