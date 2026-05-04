---@class PaletteColors
local palette = {
	-- Background shades (from VS Code theme)
	bg0 = "#181616", -- editor.background
	bg1 = "#181818", -- editorGroupHeader.tabsBackground
	bg2 = "#282828", -- statusBar.background
	bg3 = "#2a2a2a", -- editorWidget.background / tab.inactiveBackground
	bg4 = "#363636", -- editor.lineHighlightBackground
	bg5 = "#414141", -- titleBar.activeBackground
	bg6 = "#1a1a1a", -- terminal.background
	bg7 = "#1c1c1c", -- editorWidget.background

	-- UI backgrounds
	activityBarBg = "#2c2c2c",
	sideBarBg = "#202020",
	listActiveBg = "#333333",
	inputBg = "#2a2a2a",

	-- Borders
	border0 = "#1b1b1b",
	border1 = "#151515",
	border2 = "#585858",

	-- Foreground
	fg = "#ffffff", -- editor.foreground
	fg2 = "#DCD7BA", -- main foreground text
	fg3 = "#C8C093", -- statusBar.foreground
	fgDim = "#bbbbbb", -- sideBarTitle.foreground

	-- Variable color
	variable = "#e8e4ca", -- variable and parameter names from VS Code

	-- Grays
	gray = "#727169", -- comments
	gray2 = "#585858", -- editorLineNumber.foreground
	gray3 = "#909398",
	gray4 = "#808080",
	gray5 = "#505050", -- focusBorder
	gray6 = "#ababab", -- unused/unnecessary (smokey gray)

	-- Indent guides
	indentGuide = "#303030",
	indentGuideActive = "#525252",

	-- Selection and search
	selection = "#444444", -- editor.selectionBackground
	selectionHighlight = "#373737",
	wordHighlight = "#6363634d",
	wordHighlightBorder = "#5a5a5a",
	search = "#FF9E3B", -- editor.findMatchBorder (current match border)
	searchBg = "#3e3e3e", -- editor.findMatchBackground (current match bg)
	searchHighlightBg = "#444444", -- editor.findMatchHighlightBackground (other matches)
	visualSelection = "#283c57", -- terminal.selectionBackground

	-- Syntax colors (from tokenColors)
	blue = "#85a8da", -- functions (#85a8da with italic)
	blue2 = "#769acc", -- HTML tags
	blue3 = "#5690ac", -- terminal.ansiBlue
	blue4 = "#81c0da", -- terminal.ansiBrightBlue
	blue5 = "#6297e2", -- activityBarBadge.background, button.background
	blue6 = "#7ebcfd", -- textLink.foreground
	blue7 = "#658594", -- editorHoverWidget.highlightForeground
	blue8 = "#81b9f1", -- CSS property names
	blue9 = "#6796e6", -- markdown list begin

	cyan = "#7cd0bf", -- types
	cyan2 = "#9CABCA", -- terminal.ansiCyan
	cyan3 = "#A3D4D5", -- terminal.ansiBrightCyan

	purple = "#a584c0", -- control flow keywords (italic bold)
	purple2 = "#957FB8", -- terminal.ansiMagenta
	purple3 = "#D27E99", -- terminal.ansiBrightMagenta
	purple4 = "#d89ce2", -- Django template tags

	green = "#98BB6C", -- strings
	green2 = "#89c471", -- terminal.ansiGreen
	green3 = "#aed97a", -- terminal.ansiBrightGreen
	green4 = "#76946A", -- editorGutter.addedBackground

	yellow = "#e1e1a7", -- regex anchor/or operator
	yellow2 = "#ffd13b", -- terminal.ansiYellow
	yellow3 = "#E6C384", -- terminal.ansiBrightYellow, CSS class, JSON keys
	yellow4 = "#e0c88d", -- regex quantifier
	yellow5 = "#ffd666", -- markdown links
	yellow6 = "#f1c57e", -- keyword.operator
	yellow7 = "#f3cd87", -- Django template variables
	yellow8 = "#d6bf9a", -- property.declaration

	orange = "#f5a284", -- constants/enums
	orange2 = "#FFA066", -- JSON keys level 2
	orange3 = "#e4844d", -- markdown separator
	orange4 = "#ffbd7b", -- textPreformat.foreground, markup inline raw

	red = "#ff5353", -- invalid
	red2 = "#e14c4c", -- terminal.ansiRed
	red3 = "#FF5D62", -- terminal.ansiBrightRed, JSON keys level 3
	red4 = "#E82424", -- editorError.foreground
	red5 = "#ff8585", -- regex string
	red6 = "#C34043", -- editorGutter.deletedBackground
	red7 = "#ee4545", -- statusBar.debuggingBackground

	pink = "#ffaca3", -- object keys
	pink2 = "#eeab91", -- regex groups
	pink3 = "#D27E99", -- JSON keys level 0
	pink4 = "#E46876", -- markup italic
	pink5 = "#ffa994", -- strings in HTML tags

	aqua = "#9CDCFE", -- CSS elements (ID, Class, etc.)

	-- Numbers
	number = "#ff9488", -- constant.numeric (italic)

	-- Escape characters
	escape = "#d7ba7d", -- constant.character.escape

	-- Diff colors
	diffAdd = "#2B3328",
	diffChange = "#49443C",
	diffDelete = "#43242B",
	diffText = "#252535",

	-- Git/VCS colors
	gitAdded = "#76946A",
	gitRemoved = "#C34043",
	gitChanged = "#DCA561",
	gitIgnored = "#727169",

	-- Diagnostic colors
	error = "#E82424",
	warning = "#FF9E3B",
	info = "#658594",
	hint = "#76946A",

	-- Bracket colors
	bracket1 = "#E6C384",
	bracket2 = "#7AA89F",
	bracket3 = "#FFA066",
	bracket4 = "#D27E99",
	bracket5 = "#7E9CD8",
	bracket6 = "#957FB8",
	bracketError = "#FF5D62",

	-- Special
	special = "#569cd6",

	-- Light theme colors (lightingale variant)
	-- Backgrounds (inverted from dark theme)
	lightBg0 = "#dfdfdf", -- main editor background (inverted from #202020)
	lightBg1 = "#e7e7e7", -- tab background (inverted from #181818)
	lightBg2 = "#d7d7d7", -- status bar (inverted from #282828)
	lightBg3 = "#d1d1d1", -- widgets (inverted from #2a2a2a)
	lightBg4 = "#c9c9c9", -- line highlight (inverted from #363636)
	lightBg5 = "#bebebe", -- title bar (inverted from #414141)
	lightBg6 = "#e5e5e5", -- terminal background (inverted from #1a1a1a)
	lightBg7 = "#e3e3e3", -- widget background (inverted from #1c1c1c)

	-- Light UI backgrounds (inverted from dark theme)
	lightActivityBarBg = "#d3d3d3", -- inverted from #2c2c2c
	lightSideBarBg = "#dfdfdf", -- inverted from #202020 (same as bg0)
	lightListActiveBg = "#cccccc", -- inverted from #333333
	lightInputBg = "#d5d5d5", -- inverted from #2a2a2a

	-- Light borders (inverted from dark theme)
	lightBorder0 = "#e4e4e4", -- inverted from #1b1b1b
	lightBorder1 = "#eaeaea", -- inverted from #151515
	lightBorder2 = "#a7a7a7", -- inverted from #585858

	-- Light foregrounds - Darker for better contrast
	lightFg = "#0a0a0a", -- main foreground (very dark)
	lightFg2 = "#1a1a1a", -- primary text
	lightFg3 = "#2a2a2a", -- secondary text
	lightFgDim = "#4a4a4a", -- dimmed text

	-- Light variable color - Darker
	lightVariable = "#1a1408", -- darker version of variable

	-- Light grays - Darker for better readability
	lightGray = "#6a7a6a", -- comments (darker for better contrast)
	lightGray2 = "#909090", -- line numbers
	lightGray3 = "#606060",
	lightGray4 = "#707070",
	lightGray5 = "#a8a8a8", -- focus border
	lightGray6 = "#5a5a5a", -- unused/unnecessary

	-- Light indent guides
	lightIndentGuide = "#e8e8e8",
	lightIndentGuideActive = "#d0d0d0",

	-- Light selection and search
	lightSelection = "#d8d8d8",
	lightSelectionHighlight = "#d0d0d0",
	lightWordHighlight = "#e0e0e0b0",
	lightWordHighlightBorder = "#b8b8b8",
	lightSearch = "#d67b00", -- darker orange for visibility
	lightSearchBg = "#ffeec2", -- light yellow background
	lightSearchHighlightBg = "#ffe8b3", -- slightly darker yellow
	lightVisualSelection = "#c5d9ea", -- light blue selection

	-- Syntax colors adjusted for light background
	lightBlue = "#4a7bb8", -- functions (darker)
	lightBlue2 = "#5a6ba0", -- HTML tags
	lightBlue3 = "#3d7090", -- terminal.ansiBlue
	lightBlue4 = "#3a92b8", -- terminal.ansiBrightBlue
	lightBlue5 = "#3d6fb8", -- badges/buttons
	lightBlue6 = "#0066cc", -- text links
	lightBlue7 = "#4a6578", -- hover widget
	lightBlue8 = "#4a8ac0", -- CSS properties
	lightBlue9 = "#3d6fb8", -- markdown list

	lightCyan = "#2a8070", -- types
	lightCyan2 = "#5a7890", -- terminal.ansiCyan
	lightCyan3 = "#4a9495", -- terminal.ansiBrightCyan

	lightPurple = "#7a5a98", -- control flow
	lightPurple2 = "#6a5588", -- terminal.ansiMagenta
	lightPurple3 = "#a85070", -- terminal.ansiBrightMagenta
	lightPurple4 = "#a060c0", -- Django tags

	lightGreen = "#5a8840", -- strings
	lightGreen2 = "#5a9440", -- terminal.ansiGreen
	lightGreen3 = "#6aa850", -- terminal.ansiBrightGreen
	lightGreen4 = "#4a6a40", -- git added

	lightYellow = "#8a8a40", -- regex
	lightYellow2 = "#c09000", -- terminal.ansiYellow
	lightYellow3 = "#b09050", -- terminal.ansiBrightYellow
	lightYellow4 = "#a89850", -- regex quantifier
	lightYellow5 = "#c0a020", -- markdown links
	lightYellow6 = "#b09040", -- operators
	lightYellow7 = "#b8a050", -- Django variables
	lightYellow8 = "#a8905a", -- property declaration

	lightOrange = "#c06840", -- constants/enums
	lightOrange2 = "#d07030", -- JSON keys level 2
	lightOrange3 = "#b05020", -- markdown separator
	lightOrange4 = "#d08840", -- preformat text

	lightRed = "#c82020", -- invalid
	lightRed2 = "#b02020", -- terminal.ansiRed
	lightRed3 = "#d82828", -- terminal.ansiBrightRed
	lightRed4 = "#c00000", -- errors
	lightRed5 = "#d84848", -- regex string
	lightRed6 = "#902020", -- git deleted
	lightRed7 = "#c01010", -- debug status

	lightPink = "#c86860", -- object keys
	lightPink2 = "#b87050", -- regex groups
	lightPink3 = "#a85068", -- JSON keys level 0
	lightPink4 = "#c04858", -- markup italic
	lightPink5 = "#d06848", -- strings in HTML

	lightAqua = "#2a6a90", -- CSS elements

	-- Light numbers
	lightNumber = "#c84040", -- numeric constants

	-- Light escape characters
	lightEscape = "#987830", -- escape sequences

	-- Light diff colors
	lightDiffAdd = "#d4f0d0",
	lightDiffChange = "#f0e8c8",
	lightDiffDelete = "#f0d0d4",
	lightDiffText = "#e8e8f0",

	-- Light git colors
	lightGitAdded = "#4a6a40",
	lightGitRemoved = "#902020",
	lightGitChanged = "#b08830",
	lightGitIgnored = "#8a8a7a",

	-- Light diagnostic colors
	lightError = "#c00000",
	lightWarning = "#d67b00",
	lightInfo = "#4a6578",
	lightHint = "#4a6a40",

	-- Light bracket colors
	lightBracket1 = "#b09050",
	lightBracket2 = "#3a6860",
	lightBracket3 = "#d07030",
	lightBracket4 = "#a85068",
	lightBracket5 = "#4a7bb8",
	lightBracket6 = "#6a5588",
	lightBracketError = "#d82828",

	-- Light special
	lightSpecial = "#3d6fb8",
}

local M = {}

---@param opts? { colors?: table, theme?: string }
---@return { theme: ThemeColors, palette: PaletteColors}
function M.setup(opts)
	opts = opts or {}
	local nightingale = require("nightingale")
	local override_colors = opts.colors or nightingale.config.colors
	local theme = opts.theme or nightingale._CURRENT_THEME or "nightingale"

	-- Add to and/or override palette_colors
	local updated_palette_colors = vim.tbl_extend("force", palette, override_colors.palette or {})

	-- Generate the theme according to the updated palette colors
	local themes = require("nightingale.themes")
	local theme_fn = themes[theme]
	if not theme_fn then
		vim.notify(
			string.format("Nightingale: Theme '%s' not found, falling back to 'nightingale'", theme),
			vim.log.levels.WARN
		)
		theme_fn = themes.nightingale
	end
	local theme_colors = theme_fn(updated_palette_colors)

	-- Add to and/or override theme_colors
	local theme_overrides = override_colors.theme[theme] or {}
	local updated_theme_colors = vim.tbl_deep_extend("force", theme_colors, theme_overrides)

	return {
		theme = updated_theme_colors,
		palette = updated_palette_colors,
	}
end

return M
