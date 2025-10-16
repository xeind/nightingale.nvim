---@class PaletteColors
local palette = {
    -- Background shades (from VS Code theme)
    bg0 = "#202020",        -- editor.background
    bg1 = "#181818",        -- editorGroupHeader.tabsBackground
    bg2 = "#282828",        -- statusBar.background
    bg3 = "#2e2e2e",        -- editorWidget.background / tab.inactiveBackground
    bg4 = "#363636",        -- editor.lineHighlightBackground
    bg5 = "#414141",        -- titleBar.activeBackground
    bg6 = "#1a1a1a",        -- terminal.background
    bg7 = "#1c1c1c",        -- editorWidget.background
    
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
    fg = "#ffffff",         -- editor.foreground
    fg2 = "#DCD7BA",        -- main foreground text
    fg3 = "#C8C093",        -- statusBar.foreground
    fgDim = "#bbbbbb",      -- sideBarTitle.foreground
    
    -- Grays
    gray = "#727169",       -- comments
    gray2 = "#585858",      -- editorLineNumber.foreground
    gray3 = "#909398",
    gray4 = "#808080",
    gray5 = "#505050",      -- focusBorder
    
    -- Indent guides
    indentGuide = "#303030",
    indentGuideActive = "#525252",
    
    -- Selection and search
    selection = "#323232",       -- editor.selectionBackground
    selectionHighlight = "#373737",
    wordHighlight = "#6363634d",
    wordHighlightBorder = "#5a5a5a",
    search = "#FF9E3B",          -- editor.findMatchBorder
    searchBg = "#3e3e3e",        -- editor.findMatchBackground
    searchHighlight = "#444444",
    visualSelection = "#283c57", -- terminal.selectionBackground
    
    -- Syntax colors (from tokenColors)
    blue = "#85a8da",       -- functions (#85a8da with italic)
    blue2 = "#769acc",      -- HTML tags
    blue3 = "#5690ac",      -- terminal.ansiBlue
    blue4 = "#81c0da",      -- terminal.ansiBrightBlue
    blue5 = "#6297e2",      -- activityBarBadge.background, button.background
    blue6 = "#7ebcfd",      -- textLink.foreground
    blue7 = "#658594",      -- editorHoverWidget.highlightForeground
    blue8 = "#81b9f1",      -- CSS property names
    blue9 = "#6796e6",      -- markdown list begin
    
    cyan = "#7cd0bf",       -- types
    cyan2 = "#9CABCA",      -- terminal.ansiCyan
    cyan3 = "#A3D4D5",      -- terminal.ansiBrightCyan
    
    purple = "#a584c0",     -- control flow keywords (italic bold)
    purple2 = "#957FB8",    -- terminal.ansiMagenta
    purple3 = "#D27E99",    -- terminal.ansiBrightMagenta
    purple4 = "#d89ce2",    -- Django template tags
    
    green = "#98BB6C",      -- strings
    green2 = "#89c471",     -- terminal.ansiGreen
    green3 = "#aed97a",     -- terminal.ansiBrightGreen
    green4 = "#76946A",     -- editorGutter.addedBackground
    
    yellow = "#e1e1a7",     -- regex anchor/or operator
    yellow2 = "#ffd13b",    -- terminal.ansiYellow
    yellow3 = "#E6C384",    -- terminal.ansiBrightYellow, CSS class, JSON keys
    yellow4 = "#e0c88d",    -- regex quantifier
    yellow5 = "#ffd666",    -- markdown links
    yellow6 = "#f1c57e",    -- keyword.operator
    yellow7 = "#f3cd87",    -- Django template variables
    yellow8 = "#d6bf9a",    -- property.declaration
    
    orange = "#f5a284",     -- constants/enums
    orange2 = "#FFA066",    -- JSON keys level 2
    orange3 = "#e4844d",    -- markdown separator
    orange4 = "#ffbd7b",    -- textPreformat.foreground, markup inline raw
    
    red = "#ff5353",        -- invalid
    red2 = "#e14c4c",       -- terminal.ansiRed
    red3 = "#FF5D62",       -- terminal.ansiBrightRed, JSON keys level 3
    red4 = "#E82424",       -- editorError.foreground
    red5 = "#ff8585",       -- regex string
    red6 = "#C34043",       -- editorGutter.deletedBackground
    red7 = "#ee4545",       -- statusBar.debuggingBackground
    
    pink = "#ffaca3",       -- object keys
    pink2 = "#eeab91",      -- regex groups
    pink3 = "#D27E99",      -- JSON keys level 0
    pink4 = "#E46876",      -- markup italic
    pink5 = "#ffa994",      -- strings in HTML tags
    
    aqua = "#9CDCFE",       -- CSS elements (ID, Class, etc.)
    
    -- Numbers
    number = "#ff9488",     -- constant.numeric (italic)
    
    -- Escape characters
    escape = "#d7ba7d",     -- constant.character.escape
    
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
}

local M = {}

---@param opts? { colors?: table }
---@return { theme: ThemeColors, palette: PaletteColors}
function M.setup(opts)
    opts = opts or {}
    local nightingale = require("nightingale")
    local override_colors = opts.colors or nightingale.config.colors
    
    -- Add to and/or override palette_colors
    local updated_palette_colors = vim.tbl_extend("force", palette, override_colors.palette or {})
    
    -- Generate the theme according to the updated palette colors
    local theme_colors = require("nightingale.themes").nightingale(updated_palette_colors)
    
    -- Add to and/or override theme_colors
    local theme_overrides = override_colors.theme.nightingale or {}
    local updated_theme_colors = vim.tbl_deep_extend("force", theme_colors, theme_overrides)
    
    return {
        theme = updated_theme_colors,
        palette = updated_palette_colors,
    }
end

return M
