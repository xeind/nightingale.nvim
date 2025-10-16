local M = {}

---@param theme ThemeColors
---@param config NightingaleConfig
---@return table<string,HlSpec>
function M.setup(theme, config)
    local highlights = {}

    highlights.GitSignsAdd = { fg = theme.vcs.added }
    highlights.GitSignsChange = { fg = theme.vcs.changed }
    highlights.GitSignsDelete = { fg = theme.vcs.removed }

    highlights.GitGutterAdd = { link = "GitSignsAdd" }
    highlights.GitGutterChange = { link = "GitSignsChange" }
    highlights.GitGutterDelete = { link = "GitSignsDelete" }

    highlights.TelescopeBorder = { link = "FloatBorder" }
    highlights.TelescopeNormal = { link = "NormalFloat" }
    highlights.TelescopeSelection = { fg = theme.ui.fg, bg = theme.ui.bg_p2 }
    highlights.TelescopeSelectionCaret = { fg = theme.diag.warning, bg = theme.ui.bg_p2 }
    highlights.TelescopeMultiSelection = { fg = theme.syn.special1, bg = theme.ui.bg_p1 }
    highlights.TelescopeMatching = { fg = theme.diag.info, bold = true }
    highlights.TelescopePromptPrefix = { fg = theme.diag.info }

    highlights.NvimTreeFolderName = { fg = theme.syn.fun }
    highlights.NvimTreeFolderIcon = { fg = theme.syn.fun }
    highlights.NvimTreeEmptyFolderName = { fg = theme.syn.comment }
    highlights.NvimTreeOpenedFolderName = { fg = theme.syn.fun, bold = true }
    highlights.NvimTreeIndentMarker = { fg = theme.ui.indent_line }
    highlights.NvimTreeGitDirty = { fg = theme.vcs.changed }
    highlights.NvimTreeGitNew = { fg = theme.vcs.added }
    highlights.NvimTreeGitDeleted = { fg = theme.vcs.removed }
    highlights.NvimTreeSpecialFile = { fg = theme.syn.special1 }
    highlights.NvimTreeImageFile = { fg = theme.syn.special2 }
    highlights.NvimTreeSymlink = { fg = theme.syn.special3 }
    highlights.NvimTreeRootFolder = { fg = theme.diag.info, bold = true }

    highlights.NeoTreeNormal = { link = "NormalFloat" }
    highlights.NeoTreeNormalNC = { link = "NormalFloat" }
    highlights.NeoTreeDirectoryIcon = { fg = theme.syn.fun }
    highlights.NeoTreeDirectoryName = { fg = theme.syn.fun }
    highlights.NeoTreeGitAdded = { fg = theme.vcs.added }
    highlights.NeoTreeGitDeleted = { fg = theme.vcs.removed }
    highlights.NeoTreeGitModified = { fg = theme.vcs.changed }
    highlights.NeoTreeGitUntracked = { fg = theme.vcs.untracked }

    highlights.WhichKey = { fg = theme.syn.special1 }
    highlights.WhichKeyGroup = { fg = theme.syn.keyword }
    highlights.WhichKeyDesc = { fg = theme.syn.fun }
    highlights.WhichKeySeperator = { fg = theme.syn.comment }
    highlights.WhichKeyFloat = { link = "NormalFloat" }
    highlights.WhichKeyBorder = { link = "FloatBorder" }

    highlights.IndentBlanklineChar = { fg = theme.ui.indent_line }
    highlights.IndentBlanklineContextChar = { fg = theme.ui.active_indent_line }
    highlights.IblIndent = { fg = theme.ui.indent_line }
    highlights.IblScope = { fg = theme.ui.active_indent_line }

    highlights.MiniIndentscopeSymbol = { fg = theme.ui.active_indent_line }

    highlights.CmpItemAbbrDeprecated = { fg = theme.syn.deprecated, strikethrough = true }
    highlights.CmpItemAbbrMatch = { fg = theme.diag.info }
    highlights.CmpItemAbbrMatchFuzzy = { fg = theme.diag.info }
    highlights.CmpItemKindVariable = { fg = theme.syn.variable }
    highlights.CmpItemKindInterface = { fg = theme.syn.type }
    highlights.CmpItemKindText = { fg = theme.ui.fg }
    highlights.CmpItemKindFunction = { fg = theme.syn.fun }
    highlights.CmpItemKindMethod = { fg = theme.syn.fun }
    highlights.CmpItemKindKeyword = { fg = theme.syn.keyword }
    highlights.CmpItemKindProperty = { fg = theme.syn.identifier }
    highlights.CmpItemKindUnit = { fg = theme.syn.constant }
    highlights.CmpItemKindSnippet = { fg = theme.syn.special1 }

    highlights.LeapMatch = { fg = theme.diag.warning, bold = true, underline = true }
    highlights.LeapLabelPrimary = { fg = theme.ui.bg, bg = theme.diag.warning, bold = true }
    highlights.LeapLabelSecondary = { fg = theme.ui.bg, bg = theme.diag.info, bold = true }

    highlights.NotifyBackground = { bg = theme.ui.bg }
    highlights.NotifyERRORBorder = { fg = theme.diag.error }
    highlights.NotifyWARNBorder = { fg = theme.diag.warning }
    highlights.NotifyINFOBorder = { fg = theme.diag.info }
    highlights.NotifyDEBUGBorder = { fg = theme.syn.comment }
    highlights.NotifyTRACEBorder = { fg = theme.syn.special1 }
    highlights.NotifyERRORIcon = { fg = theme.diag.error }
    highlights.NotifyWARNIcon = { fg = theme.diag.warning }
    highlights.NotifyINFOIcon = { fg = theme.diag.info }
    highlights.NotifyDEBUGIcon = { fg = theme.syn.comment }
    highlights.NotifyTRACEIcon = { fg = theme.syn.special1 }
    highlights.NotifyERRORTitle = { fg = theme.diag.error }
    highlights.NotifyWARNTitle = { fg = theme.diag.warning }
    highlights.NotifyINFOTitle = { fg = theme.diag.info }
    highlights.NotifyDEBUGTitle = { fg = theme.syn.comment }
    highlights.NotifyTRACETitle = { fg = theme.syn.special1 }

    highlights.DashboardShortCut = { fg = theme.syn.special1 }
    highlights.DashboardHeader = { fg = theme.syn.fun }
    highlights.DashboardCenter = { fg = theme.syn.keyword }
    highlights.DashboardFooter = { fg = theme.syn.comment, italic = true }

    highlights.LazyH1 = { bg = theme.syn.fun, fg = theme.ui.bg, bold = true }
    highlights.LazyButton = { bg = theme.ui.bg_p1, fg = theme.ui.fg }
    highlights.LazyButtonActive = { bg = theme.ui.pmenu.bg_sel, fg = theme.ui.fg, bold = true }
    highlights.LazySpecial = { fg = theme.syn.special1 }

    highlights.NavicText = { fg = theme.ui.fg }
    highlights.NavicSeparator = { fg = theme.syn.punct }

    return highlights
end

return M
