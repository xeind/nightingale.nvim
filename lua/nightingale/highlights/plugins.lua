local M = {}

---@param theme ThemeColors
---@param config NightingaleConfig
---@return table<string,HlSpec>
function M.setup(theme, config)
	local highlights = {}

	highlights.GitSignsAdd = { fg = theme.vcs.added, bg = theme.ui.bg_gutter }
	highlights.GitSignsChange = { fg = theme.vcs.changed, bg = theme.ui.bg_gutter }
	highlights.GitSignsDelete = { fg = theme.vcs.removed, bg = theme.ui.bg_gutter }

	highlights.GitGutterAdd = { link = "GitSignsAdd" }
	highlights.GitGutterChange = { link = "GitSignsChange" }
	highlights.GitGutterDelete = { link = "GitSignsDelete" }

	highlights.NeogitDiffContextHighlight = { bg = theme.diff.change }
	highlights.NeogitHunkHeader = { fg = theme.syn.fun }
	highlights.NeogitHunkHeaderHighlight = { fg = theme.syn.constant, bg = theme.diff.change }
	highlights.NeogitDiffAddHighlight = { bg = theme.diff.add }
	highlights.NeogitDiffDeleteHighlight = { bg = theme.diff.delete }

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

	highlights.MiniCursorword = { underline = true }
	highlights.MiniCursorwordCurrent = { underline = true }

	highlights.MiniDiffSignAdd = { fg = theme.vcs.added, bg = theme.ui.bg_gutter }
	highlights.MiniDiffSignChange = { fg = theme.vcs.changed, bg = theme.ui.bg_gutter }
	highlights.MiniDiffSignDelete = { fg = theme.vcs.removed, bg = theme.ui.bg_gutter }
	highlights.MiniDiffOverAdd = { link = "DiffAdd" }
	highlights.MiniDiffOverChange = { link = "DiffText" }
	highlights.MiniDiffOverContext = { link = "DiffChange" }
	highlights.MiniDiffOverDelete = { link = "DiffDelete" }

	highlights.MiniFilesBorder = { link = "FloatBorder" }
	highlights.MiniFilesCursorLine = { link = "CursorLine" }
	highlights.MiniFilesDirectory = { link = "Directory" }
	highlights.MiniFilesFile = { fg = theme.ui.fg }
	highlights.MiniFilesNormal = { link = "NormalFloat" }
	highlights.MiniFilesTitle = { fg = theme.ui.special, bg = theme.ui.float_bg, bold = true }

	highlights.MiniJump2dSpot = { fg = theme.syn.constant, bold = true, nocombine = true }

	highlights.MiniStarterCurrent = { nocombine = true }
	highlights.MiniStarterFooter = { fg = theme.syn.deprecated }
	highlights.MiniStarterHeader = { link = "Title" }
	highlights.MiniStarterInactive = { link = "Comment" }
	highlights.MiniStarterItem = { link = "Normal" }
	highlights.MiniStarterItemBullet = { link = "Delimiter" }
	highlights.MiniStarterItemPrefix = { fg = theme.diag.warning }
	highlights.MiniStarterSection = { fg = theme.diag.ok }
	highlights.MiniStarterQuery = { fg = theme.diag.info }

	highlights.MiniStatuslineDevinfo = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p1 }
	highlights.MiniStatuslineFileinfo = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p1 }
	highlights.MiniStatuslineFilename = { fg = theme.ui.fg_dim, bg = theme.ui.bg_dim }
	highlights.MiniStatuslineInactive = { link = "StatusLineNC" }
	highlights.MiniStatuslineModeCommand = { fg = theme.ui.bg, bg = theme.syn.operator, bold = true }
	highlights.MiniStatuslineModeInsert = { fg = theme.ui.bg, bg = theme.diag.ok, bold = true }
	highlights.MiniStatuslineModeNormal = { fg = theme.ui.bg, bg = theme.syn.fun, bold = true }
	highlights.MiniStatuslineModeOther = { fg = theme.ui.bg, bg = theme.syn.type, bold = true }
	highlights.MiniStatuslineModeReplace = { fg = theme.ui.bg, bg = theme.syn.constant, bold = true }
	highlights.MiniStatuslineModeVisual = { fg = theme.ui.bg, bg = theme.syn.keyword, bold = true }

	highlights.MiniTablineCurrent = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p1, bold = true }
	highlights.MiniTablineFill = { link = "TabLineFill" }
	highlights.MiniTablineHidden = { fg = theme.ui.special, bg = theme.ui.bg_m3 }
	highlights.MiniTablineModifiedCurrent = { fg = theme.ui.bg_p1, bg = theme.ui.fg_dim, bold = true }
	highlights.MiniTablineModifiedHidden = { fg = theme.ui.bg_m3, bg = theme.ui.special }
	highlights.MiniTablineModifiedVisible = { fg = theme.ui.bg_m3, bg = theme.ui.special, bold = true }
	highlights.MiniTablineTabpagesection = { fg = theme.ui.fg, bg = theme.ui.bg_search, bold = true }
	highlights.MiniTablineVisible = { fg = theme.ui.special, bg = theme.ui.bg_m3, bold = true }

	highlights.MiniTestEmphasis = { bold = true }
	highlights.MiniTestFail = { fg = theme.diag.error, bold = true }
	highlights.MiniTestPass = { fg = theme.diag.ok, bold = true }

	highlights.MiniTrailspace = { bg = theme.vcs.removed }

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
	highlights.CmpItemKindColor = { link = "Special" }
	highlights.CmpItemKindFile = { link = "Directory" }
	highlights.CmpItemKindReference = { link = "Special" }
	highlights.CmpItemKindFolder = { link = "Directory" }
	highlights.CmpItemKindEnumMember = { link = "Constant" }
	highlights.CmpItemKindConstant = { link = "Constant" }
	highlights.CmpItemKindStruct = { link = "Type" }
	highlights.CmpItemKindEvent = { link = "Type" }
	highlights.CmpItemKindOperator = { link = "Operator" }
	highlights.CmpItemKindTypeParameter = { link = "Type" }
	highlights.CmpItemKindCopilot = { link = "String" }

	highlights.BlinkCmpMenu = { link = "Pmenu" }
	highlights.BlinkCmpMenuSelection = { link = "PmenuSel" }
	highlights.BlinkCmpMenuBorder = { fg = theme.ui.bg_search, bg = theme.ui.pmenu.bg }
	highlights.BlinkCmpScrollBarThumb = { link = "PmenuThumb" }
	highlights.BlinkCmpScrollBarGutter = { link = "PmenuSbar" }
	highlights.BlinkCmpLabel = { fg = theme.ui.pmenu.fg }
	highlights.BlinkCmpLabelMatch = { fg = theme.syn.fun }
	highlights.BlinkCmpLabelDetails = { fg = theme.syn.comment }
	highlights.BlinkCmpLabelDeprecated = { fg = theme.syn.comment, strikethrough = true }
	highlights.BlinkCmpGhostText = { fg = theme.syn.comment }
	highlights.BlinkCmpDoc = { link = "NormalFloat" }
	highlights.BlinkCmpDocBorder = { link = "FloatBorder" }
	highlights.BlinkCmpDocCursorLine = { link = "Visual" }
	highlights.BlinkCmpSignatureHelp = { link = "NormalFloat" }
	highlights.BlinkCmpSignatureHelpBorder = { link = "FloatBorder" }
	highlights.BlinkCmpSignatureHelpActiveParameter = { link = "LspSignatureActiveParameter" }

	highlights.BlinkCmpKind = { fg = theme.ui.fg_dim }
	highlights.BlinkCmpKindText = { fg = theme.ui.fg }
	highlights.BlinkCmpKindMethod = { link = "@function.method" }
	highlights.BlinkCmpKindFunction = { link = "Function" }
	highlights.BlinkCmpKindConstructor = { link = "@constructor" }
	highlights.BlinkCmpKindField = { link = "@variable.member" }
	highlights.BlinkCmpKindVariable = { fg = theme.ui.fg_dim }
	highlights.BlinkCmpKindClass = { link = "Type" }
	highlights.BlinkCmpKindInterface = { link = "Type" }
	highlights.BlinkCmpKindModule = { link = "@module" }
	highlights.BlinkCmpKindProperty = { link = "@property" }
	highlights.BlinkCmpKindUnit = { link = "Number" }
	highlights.BlinkCmpKindValue = { link = "String" }
	highlights.BlinkCmpKindEnum = { link = "Type" }
	highlights.BlinkCmpKindKeyword = { link = "Keyword" }
	highlights.BlinkCmpKindSnippet = { link = "Special" }
	highlights.BlinkCmpKindColor = { link = "Special" }
	highlights.BlinkCmpKindFile = { link = "Directory" }
	highlights.BlinkCmpKindReference = { link = "Special" }
	highlights.BlinkCmpKindFolder = { link = "Directory" }
	highlights.BlinkCmpKindEnumMember = { link = "Constant" }
	highlights.BlinkCmpKindConstant = { link = "Constant" }
	highlights.BlinkCmpKindStruct = { link = "Type" }
	highlights.BlinkCmpKindEvent = { link = "Type" }
	highlights.BlinkCmpKindOperator = { link = "Operator" }
	highlights.BlinkCmpKindTypeParameter = { link = "Type" }
	highlights.BlinkCmpKindCopilot = { link = "String" }

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
	highlights.NavicIconsFile = { link = "Directory" }
	highlights.NavicIconsModule = { link = "@module" }
	highlights.NavicIconsNamespace = { link = "@module" }
	highlights.NavicIconsPackage = { link = "@module" }
	highlights.NavicIconsClass = { link = "Type" }
	highlights.NavicIconsMethod = { link = "@function.method" }
	highlights.NavicIconsProperty = { link = "@property" }
	highlights.NavicIconsField = { link = "@variable.member" }
	highlights.NavicIconsConstructor = { link = "@constructor" }
	highlights.NavicIconsEnum = { link = "Type" }
	highlights.NavicIconsInterface = { link = "Type" }
	highlights.NavicIconsFunction = { link = "Function" }
	highlights.NavicIconsVariable = { link = "@variable" }
	highlights.NavicIconsConstant = { link = "Constant" }
	highlights.NavicIconsString = { link = "String" }
	highlights.NavicIconsNumber = { link = "Number" }
	highlights.NavicIconsBoolean = { link = "Boolean" }
	highlights.NavicIconsArray = { link = "Type" }
	highlights.NavicIconsObject = { link = "Type" }
	highlights.NavicIconsKey = { link = "Identifier" }
	highlights.NavicIconsNull = { link = "Type" }
	highlights.NavicIconsEnumMember = { link = "Constant" }
	highlights.NavicIconsStruct = { link = "Structure" }
	highlights.NavicIconsEvent = { link = "Structure" }
	highlights.NavicIconsOperator = { link = "Operator" }
	highlights.NavicIconsTypeParameter = { link = "Type" }

	highlights.AerialFileIcon = { link = "Directory" }
	highlights.AerialModuleIcon = { link = "@module" }
	highlights.AerialNamespaceIcon = { link = "@module" }
	highlights.AerialPackageIcon = { link = "@module" }
	highlights.AerialClassIcon = { link = "Type" }
	highlights.AerialMethodIcon = { link = "@function.method" }
	highlights.AerialPropertyIcon = { link = "@property" }
	highlights.AerialFieldIcon = { link = "@variable.member" }
	highlights.AerialConstructorIcon = { link = "@constructor" }
	highlights.AerialEnumIcon = { link = "Type" }
	highlights.AerialInterfaceIcon = { link = "Type" }
	highlights.AerialFunctionIcon = { link = "Function" }
	highlights.AerialVariableIcon = { link = "@variable" }
	highlights.AerialConstantIcon = { link = "Constant" }
	highlights.AerialStringIcon = { link = "String" }
	highlights.AerialNumberIcon = { link = "Number" }
	highlights.AerialBooleanIcon = { link = "Boolean" }
	highlights.AerialArrayIcon = { link = "Type" }
	highlights.AerialObjectIcon = { link = "Type" }
	highlights.AerialKeyIcon = { link = "Identifier" }
	highlights.AerialNullIcon = { link = "Type" }
	highlights.AerialEnumMemberIcon = { link = "Constant" }
	highlights.AerialStructIcon = { link = "Structure" }
	highlights.AerialEventIcon = { link = "Structure" }
	highlights.AerialOperatorIcon = { link = "Operator" }
	highlights.AerialTypeParameterIcon = { link = "Type" }

	highlights.DapBreakpoint = { fg = theme.diag.error }
	highlights.DapBreakpointCondition = { fg = theme.diag.warning }
	highlights.DapBreakpointRejected = { fg = theme.syn.comment }
	highlights.DapLogPoint = { fg = theme.diag.info }
	highlights.DapStopped = { fg = theme.diag.warning }
	highlights.DapStoppedLine = { bg = theme.ui.bg_p2 }
	highlights.DapUIBreakpointsCurrentLine = { fg = theme.diag.info, bold = true }
	highlights.DapUIBreakpointsDisabledLine = { fg = theme.syn.comment }
	highlights.DapUIBreakpointsInfo = { fg = theme.diag.info }
	highlights.DapUIBreakpointsPath = { fg = theme.syn.fun }
	highlights.DapUIDecoration = { fg = theme.syn.special1 }
	highlights.DapUIFloatBorder = { link = "FloatBorder" }
	highlights.DapUIFrameName = { fg = theme.ui.fg }
	highlights.DapUILineNumber = { fg = theme.diag.info }
	highlights.DapUIModifiedValue = { fg = theme.diag.warning, bold = true }
	highlights.DapUIPlayPause = { fg = theme.diag.ok }
	highlights.DapUIRestart = { fg = theme.diag.ok }
	highlights.DapUIScope = { fg = theme.syn.fun }
	highlights.DapUISource = { fg = theme.syn.special1 }
	highlights.DapUIStepBack = { fg = theme.diag.info }
	highlights.DapUIStepInto = { fg = theme.diag.info }
	highlights.DapUIStepOut = { fg = theme.diag.info }
	highlights.DapUIStepOver = { fg = theme.diag.info }
	highlights.DapUIStop = { fg = theme.diag.error }
	highlights.DapUIStoppedThread = { fg = theme.diag.info }
	highlights.DapUIThread = { fg = theme.syn.fun }
	highlights.DapUIType = { fg = theme.syn.type }
	highlights.DapUIUnavailable = { fg = theme.syn.comment }
	highlights.DapUIWatchesEmpty = { fg = theme.syn.comment }
	highlights.DapUIWatchesError = { fg = theme.diag.error }
	highlights.DapUIWatchesValue = { fg = theme.syn.string }

	highlights.TroubleNormal = { link = "NormalFloat" }
	highlights.TroubleText = { fg = theme.ui.fg }
	highlights.TroubleCount = { fg = theme.syn.number, bg = theme.ui.bg_p1 }
	highlights.TroubleCode = { fg = theme.syn.comment }
	highlights.TroubleFile = { fg = theme.syn.fun }
	highlights.TroubleSource = { fg = theme.syn.comment }
	highlights.TroubleLocation = { fg = theme.syn.comment }
	highlights.TroubleIndent = { fg = theme.ui.indent_line }
	highlights.TroubleFoldIcon = { fg = theme.syn.special1 }
	highlights.TroubleSignError = { fg = theme.diag.error }
	highlights.TroubleSignWarning = { fg = theme.diag.warning }
	highlights.TroubleSignInformation = { fg = theme.diag.info }
	highlights.TroubleSignHint = { fg = theme.diag.hint }
	highlights.TroubleSignOther = { fg = theme.syn.special1 }
	highlights.TroubleTextError = { fg = theme.diag.error }
	highlights.TroubleTextWarning = { fg = theme.diag.warning }
	highlights.TroubleTextInformation = { fg = theme.diag.info }
	highlights.TroubleTextHint = { fg = theme.diag.hint }

	highlights.NeotestAdapterName = { fg = theme.syn.special3 }
	highlights.NeotestDir = { fg = theme.syn.fun }
	highlights.NeotestExpandMarker = { fg = theme.syn.punct, bold = true }
	highlights.NeotestFailed = { fg = theme.diag.error }
	highlights.NeotestFile = { fg = theme.syn.fun }
	highlights.NeotestFocused = { bold = true, underline = true }
	highlights.NeotestIndent = { fg = theme.ui.special }
	highlights.NeotestMarked = { fg = theme.diag.warning, italic = true }
	highlights.NeotestNamespace = { fg = theme.syn.fun }
	highlights.NeotestPassed = { fg = theme.diag.ok }
	highlights.NeotestRunning = { fg = theme.vcs.changed }
	highlights.NeotestWinSelect = { fg = theme.diag.hint }
	highlights.NeotestSkipped = { fg = theme.syn.special1 }
	highlights.NeotestTarget = { fg = theme.syn.special3 }
	highlights.NeotestTest = { fg = theme.ui.fg }
	highlights.NeotestUnknown = { fg = theme.syn.deprecated }
	highlights.NeotestWatching = { fg = theme.vcs.changed }

	return highlights
end

return M
