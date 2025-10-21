local M = {}

---@param theme ThemeColors
---@param config NightingaleConfig
---@return table<string,HlSpec>
function M.setup(theme, config)
	return {
		Comment = { fg = theme.syn.comment, italic = true },
		Constant = { fg = theme.syn.constant },
		String = { fg = theme.syn.string },
		Character = { fg = theme.syn.string },
		Number = { fg = theme.syn.number, italic = true },
		Boolean = { fg = theme.syn.constant },
		Float = { fg = theme.syn.number, italic = true },

		Identifier = { fg = theme.syn.identifier },
		Function = { fg = theme.syn.fun, italic = true },

		Statement = { fg = theme.syn.statement },
		Conditional = { fg = theme.syn.control_flow, italic = true, bold = true },
		Repeat = { fg = theme.syn.control_flow, italic = true, bold = true },
		Label = { fg = theme.syn.label },
		Operator = { fg = theme.syn.operator },
		Keyword = { fg = theme.syn.keyword },
		Exception = { fg = theme.syn.control_flow, italic = true, bold = true },

		PreProc = { fg = theme.syn.preproc },
		Include = { fg = theme.syn.preproc },
		Define = { fg = theme.syn.preproc },
		Macro = { fg = theme.syn.preproc },
		PreCondit = { fg = theme.syn.preproc },

		Type = { fg = theme.syn.type },
		StorageClass = { fg = theme.syn.keyword },
		Structure = { fg = theme.syn.type },
		Typedef = { fg = theme.syn.type },

		Special = { fg = theme.syn.special1 },
		SpecialChar = { fg = theme.syn.special2 },
		Tag = { fg = theme.syn.special3 },
		Delimiter = { fg = theme.syn.punct },
		SpecialComment = { fg = theme.syn.comment },
		Debug = { fg = theme.syn.special1 },

		Underlined = { fg = theme.ui.fg, underline = true },
		Ignore = { fg = theme.ui.nontext },
		Error = { fg = theme.diag.error },
		Todo = { fg = theme.ui.bg, bg = theme.diag.info, bold = true },

		qfLineNr = { fg = theme.syn.special1 },
		qfFileName = { fg = theme.syn.fun },

		htmlH1 = { fg = theme.syn.fun, bold = true },
		htmlH2 = { fg = theme.syn.fun, bold = true },

		mkdHeading = { fg = theme.syn.keyword, bold = true },
		mkdCode = { fg = theme.syn.string, bg = theme.ui.bg_p1 },
		mkdCodeDelimiter = { fg = theme.syn.punct },
		mkdCodeStart = { fg = theme.syn.fun, bold = true },
		mkdCodeEnd = { fg = theme.syn.fun, bold = true },
		mkdLink = { fg = theme.syn.fun, underline = true },

		markdownHeadingDelimiter = { fg = theme.syn.keyword, bold = true },
		markdownCode = { fg = theme.syn.string },
		markdownCodeBlock = { fg = theme.syn.string },
		markdownH1 = { fg = theme.syn.fun, bold = true },
		markdownH2 = { fg = theme.syn.fun, bold = true },
		markdownLinkText = { fg = theme.syn.fun, underline = true },
	}
end

return M
