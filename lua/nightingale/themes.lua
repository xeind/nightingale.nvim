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
			bg_gutter = palette.bg0,

				special = palette.gray2,
				indent_line = palette.indentGuide,
				active_indent_line = palette.indentGuideActive,
				whitespace = palette.gray2,
				nontext = palette.gray2,

				bg_visual = palette.selection,
				bg_search = palette.searchBg,

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
				identifier = palette.cyan,
				parameter = palette.variable,
				fun = palette.blue,
				statement = palette.purple,
				keyword = palette.special,
				operator = palette.yellow6,
				preproc = palette.blue,
				type = palette.cyan,
				regex = palette.red5,
				deprecated = palette.gray,
				punct = palette.fg,
				comment = palette.gray,
				special1 = palette.yellow3,
				special2 = palette.escape,
				special3 = palette.cyan,
				control_flow = palette.purple,
				object_key = palette.pink,
				property_decl = palette.yellow8,
				regex_group = palette.pink2,
			},
			diag = {
				error = palette.error,
				ok = palette.green,
				warning = palette.warning,
				info = palette.info,
				hint = palette.hint,
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
				"#1F1F28", -- black (terminal.ansiBlack)
				"#e14c4c", -- red (terminal.ansiRed)
				"#89c471", -- green (terminal.ansiGreen)
				"#ffd13b", -- yellow (terminal.ansiYellow)
				"#5690ac", -- blue (terminal.ansiBlue)
				"#957FB8", -- magenta (terminal.ansiMagenta)
				"#9CABCA", -- cyan (terminal.ansiCyan)
				"#DCD7BA", -- white (terminal.ansiWhite)
				"#2A2A37", -- bright black (terminal.ansiBrightBlack)
				"#FF5D62", -- bright red (terminal.ansiBrightRed)
				"#aed97a", -- bright green (terminal.ansiBrightGreen)
				"#E6C384", -- bright yellow (terminal.ansiBrightYellow)
				"#81c0da", -- bright blue (terminal.ansiBrightBlue)
				"#D27E99", -- bright magenta (terminal.ansiBrightMagenta)
				"#A3D4D5", -- bright cyan (terminal.ansiBrightCyan)
				"#DCD7BA", -- bright white (terminal.ansiBrightWhite)
			},
		}
	end,
}
