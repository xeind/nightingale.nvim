local M = {}

---@param theme ThemeColors
---@param config NightingaleConfig
---@return table<string,HlSpec>
function M.setup(theme, config)
    config = config or require("nightingale").config

    local transparent = config.transparent

    return {
        ColorColumn = { bg = theme.ui.bg_p2 },
        Conceal = { fg = theme.ui.special, bold = true },
        CurSearch = { bg = theme.ui.bg_search, fg = theme.ui.fg },
        Cursor = { fg = theme.ui.cursor_fg, bg = theme.ui.cursor_bg },
        lCursor = { link = "Cursor" },
        CursorIM = { link = "Cursor" },
        CursorColumn = { link = "CursorLine" },
        CursorLine = { bg = theme.ui.bg_p2 },
        Directory = { fg = theme.syn.fun },
        DiffAdd = { bg = theme.diff.add },
        DiffChange = { bg = theme.diff.change },
        DiffDelete = { bg = theme.diff.delete },
        DiffText = { bg = theme.diff.text },
        EndOfBuffer = { fg = transparent and theme.ui.none or theme.ui.bg },
        TermCursor = { link = "Cursor" },
        TermCursorNC = { link = "Cursor" },
        ErrorMsg = { fg = theme.diag.error },
        WinSeparator = { fg = theme.ui.bg_p2, bg = transparent and theme.ui.none or theme.ui.bg },
        Folded = { fg = theme.syn.comment, bg = transparent and theme.ui.none or theme.ui.bg_p1 },
        FoldColumn = { fg = theme.syn.comment, bg = transparent and theme.ui.none or theme.ui.bg },
        SignColumn = { fg = theme.ui.special, bg = theme.ui.bg_gutter },
        SignColumnSB = { link = "SignColumn" },
        Substitute = { fg = theme.ui.fg, bg = theme.ui.bg_search },
        LineNr = { fg = theme.ui.cursor_line_nr_foreground, bg = theme.ui.bg_gutter },
        CursorLineNr = { fg = theme.ui.cursor_line_nr_active_foreground, bg = theme.ui.bg_gutter, bold = true },
        MatchParen = { fg = theme.diag.warning, bold = true },
        ModeMsg = { fg = theme.diag.warning, bold = true },
        MsgArea = { fg = theme.ui.fg_dim },
        MoreMsg = { fg = theme.diag.info },
        NonText = { fg = theme.ui.nontext },
        Normal = { fg = theme.ui.fg, bg = transparent and theme.ui.none or theme.ui.bg },
        NormalNC = { fg = theme.ui.fg, bg = transparent and theme.ui.none or (config.dimInactive and theme.ui.bg_dim or theme.ui.bg) },
        NormalFloat = { fg = theme.ui.float.fg, bg = transparent and theme.ui.none or theme.ui.float.bg },
        FloatBorder = { fg = theme.ui.float.fg_border, bg = transparent and theme.ui.none or theme.ui.float.bg_border },
        FloatTitle = { fg = theme.ui.special, bg = transparent and theme.ui.none or theme.ui.float.bg_border },
        Pmenu = { fg = theme.ui.pmenu.fg, bg = theme.ui.pmenu.bg },
        PmenuSel = { fg = theme.ui.pmenu.fg_sel, bg = theme.ui.pmenu.bg_sel },
        PmenuSbar = { bg = theme.ui.pmenu.bg_sbar },
        PmenuThumb = { bg = theme.ui.pmenu.bg_thumb },
        Question = { fg = theme.diag.info },
        QuickFixLine = { bg = theme.ui.bg_visual },
        Search = { fg = theme.ui.fg, bg = theme.ui.bg_search },
        IncSearch = { fg = theme.ui.bg, bg = theme.diag.warning },
        SpecialKey = { fg = theme.ui.nontext },
        SpellBad = { undercurl = true, sp = theme.diag.error },
        SpellCap = { undercurl = true, sp = theme.diag.warning },
        SpellLocal = { undercurl = true, sp = theme.diag.warning },
        SpellRare = { undercurl = true, sp = theme.diag.warning },
        StatusLine = { fg = theme.ui.fg_dim, bg = transparent and theme.ui.none or theme.ui.bg_p1 },
        StatusLineNC = { fg = theme.ui.nontext, bg = transparent and theme.ui.none or theme.ui.bg },
        TabLine = { bg = transparent and theme.ui.none or theme.ui.bg, fg = theme.ui.special },
        TabLineFill = { bg = transparent and theme.ui.none or theme.ui.bg },
        TabLineSel = { fg = theme.ui.fg_dim, bg = transparent and theme.ui.none or theme.ui.bg_p1 },
        Title = { fg = theme.syn.fun, bold = true },
        Visual = { bg = theme.ui.bg_visual },
        VisualNOS = { link = "Visual" },
        WarningMsg = { fg = theme.diag.warning },
        Whitespace = { fg = theme.ui.whitespace },
        WildMenu = { link = "Pmenu" },
        WinBar = { fg = theme.ui.fg_dim, bg = transparent and theme.ui.none or theme.ui.bg },
        WinBarNC = { fg = theme.ui.fg_dim, bg = transparent and theme.ui.none or theme.ui.bg },

        debugPC = { bg = theme.diff.change },
        debugBreakpoint = { fg = theme.diag.error, bg = transparent and theme.ui.none or theme.ui.bg },

        LspReferenceText = { bg = theme.ui.bg_p2 },
        LspReferenceRead = { link = "LspReferenceText" },
        LspReferenceWrite = { link = "LspReferenceText" },

        DiagnosticError = { fg = theme.diag.error },
        DiagnosticWarn = { fg = theme.diag.warning },
        DiagnosticInfo = { fg = theme.diag.info },
        DiagnosticHint = { fg = theme.diag.hint },
        DiagnosticOk = { fg = theme.diag.ok },

        DiagnosticSignError = { fg = theme.diag.error, bg = transparent and theme.ui.none or theme.ui.bg },
        DiagnosticSignWarn = { fg = theme.diag.warning, bg = transparent and theme.ui.none or theme.ui.bg },
        DiagnosticSignInfo = { fg = theme.diag.info, bg = transparent and theme.ui.none or theme.ui.bg },
        DiagnosticSignHint = { fg = theme.diag.hint, bg = transparent and theme.ui.none or theme.ui.bg },

        DiagnosticVirtualTextError = { fg = theme.diag.error, bg = transparent and theme.ui.none or theme.ui.bg },
        DiagnosticVirtualTextWarn = { fg = theme.diag.warning, bg = transparent and theme.ui.none or theme.ui.bg },
        DiagnosticVirtualTextInfo = { fg = theme.diag.info, bg = transparent and theme.ui.none or theme.ui.bg },
        DiagnosticVirtualTextHint = { fg = theme.diag.hint, bg = transparent and theme.ui.none or theme.ui.bg },

        DiagnosticUnderlineError = { undercurl = true, sp = theme.diag.error },
        DiagnosticUnderlineWarn = { undercurl = true, sp = theme.diag.warning },
        DiagnosticUnderlineInfo = { undercurl = true, sp = theme.diag.info },
        DiagnosticUnderlineHint = { undercurl = true, sp = theme.diag.hint },

        DiagnosticUnnecessary = { fg = theme.diag.unnecessary, italic = true },
        DiagnosticDeprecated = { fg = theme.syn.deprecated, strikethrough = true },

        LspSignatureActiveParameter = { fg = theme.diag.warning },
        LspCodeLens = { fg = theme.syn.comment },

        healthError = { fg = theme.diag.error },
        healthSuccess = { fg = theme.diag.ok },
        healthWarning = { fg = theme.diag.warning },
    }
end

return M
