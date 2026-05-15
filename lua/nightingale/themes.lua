---@class SyntaxElements
---@field string ColorSpec
---@field variable ColorSpec
---@field number ColorSpec
---@field constant ColorSpec
---@field identifier ColorSpec
---@field parameter ColorSpec
---@field fun ColorSpec
---@field statement ColorSpec
---@field keyword ColorSpec
---@field operator ColorSpec
---@field preproc ColorSpec
---@field type ColorSpec
---@field regex ColorSpec
---@field deprecated ColorSpec
---@field comment ColorSpec
---@field punct ColorSpec
---@field special1 ColorSpec
---@field special2 ColorSpec
---@field special3 ColorSpec

---@class DiagnosticsElements
---@field error ColorSpec
---@field ok ColorSpec
---@field warning ColorSpec
---@field info ColorSpec
---@field hint ColorSpec
---@field unnecessary ColorSpec

---@class DiffElements
---@field add ColorSpec
---@field delete ColorSpec
---@field change ColorSpec
---@field text ColorSpec

---@class VCSElements
---@field added ColorSpec
---@field removed ColorSpec
---@field changed ColorSpec
---@field untracked ColorSpec

---@class UiElements
---@field none ColorSpec
---@field fg ColorSpec
---@field fg_dim ColorSpec
---@field fg_reverse ColorSpec
---@field bg_dim ColorSpec
---@field bg ColorSpec
---@field bg_p1 ColorSpec
---@field bg_p2 ColorSpec
---@field bg_gutter ColorSpec
---@field special ColorSpec
---@field indent_line ColorSpec
---@field active_indent_line ColorSpec
---@field nontext ColorSpec
---@field whitespace ColorSpec
---@field bg_search ColorSpec
---@field bg_search_highlight ColorSpec
---@field bg_visual ColorSpec
---@field cursor_line_nr_foreground ColorSpec
---@field cursor_line_nr_active_foreground ColorSpec
---@field cursor_bg ColorSpec
---@field cursor_fg ColorSpec
---@field pmenu MenuElements
---@field float FloatElements

---@class FloatElements
---@field fg ColorSpec
---@field bg ColorSpec
---@field fg_border ColorSpec
---@field bg_border ColorSpec

---@class MenuElements
---@field bg ColorSpec
---@field fg ColorSpec
---@field fg_sel ColorSpec
---@field bg_sel ColorSpec
---@field bg_sbar ColorSpec
---@field bg_thumb ColorSpec

---@class ThemeColors
---@field syn SyntaxElements
---@field diag DiagnosticsElements
---@field vcs VCSElements
---@field diff DiffElements
---@field ui UiElements
---@field term ColorSpec[]

return {
	---@param palette PaletteColors
	---@return ThemeColors
	nightingale = function(palette)
		return {
			ui = {
				none = "NONE",
				fg = palette.fg,
				fg_dim = palette.fg2,
				fg_reverse = palette.bg0,

				bg_dim = palette.bg0,
				bg = palette.bg0,
				bg_p1 = palette.bg3,
				bg_p2 = palette.bg4,
				bg_gutter = palette.bg2,

				special = palette.gray2,
				indent_line = palette.indentGuide,
				active_indent_line = palette.indentGuideActive,
				whitespace = palette.gray2,
				nontext = palette.gray2,

				bg_visual = palette.selection,
				bg_search = palette.searchBg,
				bg_search_highlight = palette.searchHighlightBg,

				cursor_line_nr_foreground = palette.gray2,
				cursor_line_nr_active_foreground = palette.fg2,
				cursor_bg = palette.fg2,
				cursor_fg = palette.bg0,

				pmenu = {
					fg = palette.fg2,
					fg_sel = "NONE",
					bg = palette.bg3,
					bg_sel = palette.listActiveBg,
					bg_thumb = palette.gray2,
					bg_sbar = palette.bg3,
				},

				float = {
					fg = palette.fg2,
					bg = palette.bg3,
					fg_border = palette.border2,
					bg_border = palette.bg3,
				},
			},
			syn = {
				string = palette.green,
				variable = palette.variable,
				number = palette.number,
				constant = palette.orange,
				identifier = palette.cyan2,
				parameter = palette.variable,
				fun = palette.blue,
				statement = palette.purple,
				keyword = palette.special,
				operator = palette.yellow6,
				preproc = palette.purple2,
				type = palette.cyan,
				regex = palette.red5,
				deprecated = palette.gray,
				punct = palette.fg,
				comment = palette.gray,
				special1 = palette.yellow3,
				special2 = palette.escape,
				special3 = palette.blue6,
				control_flow = palette.purple,
				object_key = palette.pink,
				property_decl = palette.yellow8,
				regex_group = palette.pink2,

				module = palette.blue5,
				namespace = palette.blue5,
				enum = palette.orange2,
				enum_member = palette.orange,
				interface = palette.cyan3,
				type_builtin = palette.cyan,
				type_parameter = palette.cyan3,
				decorator = palette.purple4,
				attribute = palette.yellow3,
				label = palette.pink3,
				macro = palette.purple2,
				builtin_var = palette.blue7,
				constructor = palette.aqua,
				method = palette.blue4,
				tag = palette.blue2,
				tag_delimiter = palette.gray3,
				url = palette.blue6,
				escape_char = palette.escape,
			},
			diag = {
				error = palette.error,
				ok = palette.green,
				warning = palette.warning,
				info = palette.info,
				hint = palette.hint,
				unnecessary = palette.gray6,
			},
			diff = {
				add = palette.diffAdd,
				delete = palette.diffDelete,
				change = palette.diffChange,
				text = palette.diffText,
			},
			vcs = {
				added = palette.gitAdded,
				removed = palette.gitRemoved,
				changed = palette.gitChanged,
				untracked = palette.gitIgnored,
			},
			term = {
				palette.bg0, -- black (terminal.ansiBlack)
				palette.red2, -- red (terminal.ansiRed)
				palette.green2, -- green (terminal.ansiGreen)
				palette.yellow2, -- yellow (terminal.ansiYellow)
				palette.blue3, -- blue (terminal.ansiBlue)
				palette.purple2, -- magenta (terminal.ansiMagenta)
				palette.cyan2, -- cyan (terminal.ansiCyan)
				palette.fg2, -- white (terminal.ansiWhite)
				palette.bg3, -- bright black (terminal.ansiBrightBlack)
				palette.red3, -- bright red (terminal.ansiBrightRed)
				palette.green3, -- bright green (terminal.ansiBrightGreen)
				palette.yellow3, -- bright yellow (terminal.ansiBrightYellow)
				palette.blue4, -- bright blue (terminal.ansiBrightBlue)
				palette.purple3, -- bright magenta (terminal.ansiBrightMagenta)
				palette.cyan3, -- bright cyan (terminal.ansiBrightCyan)
				palette.fg2, -- bright white (terminal.ansiBrightWhite)
			},
		}
	end,

	---@param palette PaletteColors
	---@return ThemeColors
	lightingale = function(palette)
		return {
			ui = {
				none = "NONE",
				fg = palette.lightFg,
				fg_dim = palette.lightFg2,
				fg_reverse = palette.lightBg0,

				bg_dim = palette.lightBg0,
				bg = palette.lightBg0,
				bg_p1 = palette.lightBg3,
				bg_p2 = palette.lightBg4,
				bg_gutter = palette.lightBg0,

				special = palette.lightGray2,
				indent_line = palette.lightIndentGuide,
				active_indent_line = palette.lightIndentGuideActive,
				whitespace = palette.lightGray2,
				nontext = palette.lightGray2,

				bg_visual = palette.lightSelection,
				bg_search = palette.lightSearchBg,
				bg_search_highlight = palette.lightSearchHighlightBg,

				cursor_line_nr_foreground = palette.lightGray2,
				cursor_line_nr_active_foreground = palette.lightFg2,
				cursor_bg = palette.lightFg2,
				cursor_fg = palette.lightBg0,

				pmenu = {
					fg = palette.lightFg2,
					fg_sel = "NONE",
					bg = palette.lightBg3,
					bg_sel = palette.lightListActiveBg,
					bg_thumb = palette.lightGray2,
					bg_sbar = palette.lightBg3,
				},

				float = {
					fg = palette.lightFg2,
					bg = palette.lightBg3,
					fg_border = palette.lightBorder2,
					bg_border = palette.lightBg3,
				},
			},
			syn = {
				string = palette.lightGreen,
				variable = palette.lightVariable,
				number = palette.lightNumber,
				constant = palette.lightOrange,
				identifier = palette.lightCyan2,
				parameter = palette.lightVariable,
				fun = palette.lightBlue,
				statement = palette.lightPurple,
				keyword = palette.lightSpecial,
				operator = palette.lightYellow6,
				preproc = palette.lightPurple2,
				type = palette.lightCyan,
				regex = palette.lightRed5,
				deprecated = palette.lightGray,
				punct = palette.lightFg,
				comment = palette.lightGray,
				special1 = palette.lightYellow3,
				special2 = palette.lightEscape,
				special3 = palette.lightBlue6,
				control_flow = palette.lightPurple,
				object_key = palette.lightPink,
				property_decl = palette.lightYellow8,
				regex_group = palette.lightPink2,

				module = palette.lightBlue5,
				namespace = palette.lightBlue5,
				enum = palette.lightOrange2,
				enum_member = palette.lightOrange,
				interface = palette.lightCyan3,
				type_builtin = palette.lightCyan,
				type_parameter = palette.lightCyan3,
				decorator = palette.lightPurple4,
				attribute = palette.lightYellow3,
				label = palette.lightPink3,
				macro = palette.lightPurple2,
				builtin_var = palette.lightBlue7,
				constructor = palette.lightAqua,
				method = palette.lightBlue4,
				tag = palette.lightBlue2,
				tag_delimiter = palette.lightGray3,
				url = palette.lightBlue6,
				escape_char = palette.lightEscape,
			},
			diag = {
				error = palette.lightError,
				ok = palette.lightGreen,
				warning = palette.lightWarning,
				info = palette.lightInfo,
				hint = palette.lightHint,
				unnecessary = palette.lightGray6,
			},
			diff = {
				add = palette.lightDiffAdd,
				delete = palette.lightDiffDelete,
				change = palette.lightDiffChange,
				text = palette.lightDiffText,
			},
			vcs = {
				added = palette.lightGitAdded,
				removed = palette.lightGitRemoved,
				changed = palette.lightGitChanged,
				untracked = palette.lightGitIgnored,
			},
			term = {
				palette.lightBg0, -- black (terminal.ansiBlack)
				palette.lightRed2, -- red (terminal.ansiRed)
				palette.lightGreen2, -- green (terminal.ansiGreen)
				palette.lightYellow2, -- yellow (terminal.ansiYellow)
				palette.lightBlue3, -- blue (terminal.ansiBlue)
				palette.lightPurple2, -- magenta (terminal.ansiMagenta)
				palette.lightCyan2, -- cyan (terminal.ansiCyan)
				palette.lightFg2, -- white (terminal.ansiWhite)
				palette.lightBg3, -- bright black (terminal.ansiBrightBlack)
				palette.lightRed3, -- bright red (terminal.ansiBrightRed)
				palette.lightGreen3, -- bright green (terminal.ansiBrightGreen)
				palette.lightYellow3, -- bright yellow (terminal.ansiBrightYellow)
				palette.lightBlue4, -- bright blue (terminal.ansiBrightBlue)
				palette.lightPurple3, -- bright magenta (terminal.ansiBrightMagenta)
				palette.lightCyan3, -- bright cyan (terminal.ansiBrightCyan)
				palette.lightFg2, -- bright white (terminal.ansiBrightWhite)
			},
		}
	end,
}
