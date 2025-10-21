local M = {}

---@param theme ThemeColors
---@param config NightingaleConfig
---@return table<string,HlSpec>
function M.setup(theme, config)
    return {
        ["@variable"] = { fg = theme.syn.variable },
        ["@variable.builtin"] = { fg = theme.syn.constant, italic = true },
        ["@variable.parameter"] = { fg = theme.syn.parameter },
        ["@variable.member"] = { fg = theme.syn.identifier },

        ["@constant"] = { fg = theme.syn.constant },
        ["@constant.builtin"] = { fg = theme.syn.constant },
        ["@constant.macro"] = { fg = theme.syn.constant },
        
        ["@lsp.type.property"] = { fg = theme.syn.property_decl },
        ["@lsp.type.enumMember"] = { fg = theme.syn.constant },
        ["@lsp.mod.readonly"] = { fg = theme.syn.constant },

        ["@module"] = { fg = theme.syn.identifier },
        ["@module.builtin"] = { fg = theme.syn.constant },
        ["@label"] = { fg = theme.syn.special1 },

        ["@string"] = { fg = theme.syn.string },
        ["@string.documentation"] = { fg = theme.syn.string },
        ["@string.regexp"] = { fg = theme.syn.regex },
        ["@string.escape"] = { fg = theme.syn.special2 },
        ["@string.special"] = { fg = theme.syn.special1 },
        ["@string.special.symbol"] = { fg = theme.syn.identifier },
        ["@string.special.url"] = { fg = theme.syn.special3, underline = true },
        ["@string.special.path"] = { fg = theme.syn.string },

        ["@character"] = { fg = theme.syn.string },
        ["@character.special"] = { fg = theme.syn.special2 },

        ["@boolean"] = { fg = theme.syn.constant },
        ["@number"] = { fg = theme.syn.number, italic = true },
        ["@number.float"] = { fg = theme.syn.number, italic = true },

        ["@type"] = { fg = theme.syn.type },
        ["@type.builtin"] = { fg = theme.syn.type },
        ["@type.definition"] = { fg = theme.syn.type },

        ["@attribute"] = { fg = theme.syn.special1 },
        ["@attribute.builtin"] = { fg = theme.syn.special1 },
        ["@property"] = { fg = theme.syn.property_decl },

        ["@function"] = { fg = theme.syn.fun, italic = true },
        ["@function.builtin"] = { fg = theme.syn.fun, italic = true },
        ["@function.call"] = { fg = theme.syn.fun, italic = true },
        ["@function.macro"] = { fg = theme.syn.preproc },
        ["@function.method"] = { fg = theme.syn.fun, italic = true },
        ["@function.method.call"] = { fg = theme.syn.fun, italic = true },

        ["@constructor"] = { fg = theme.syn.type },
        ["@operator"] = { fg = theme.syn.operator },

        ["@keyword"] = { fg = theme.syn.keyword },
        ["@keyword.coroutine"] = { fg = theme.syn.control_flow, italic = true, bold = true },
        ["@keyword.function"] = { fg = theme.syn.keyword },
        ["@keyword.operator"] = { fg = theme.syn.operator },
        ["@keyword.import"] = { fg = theme.syn.preproc },
        ["@keyword.repeat"] = { fg = theme.syn.control_flow, italic = true, bold = true },
        ["@keyword.return"] = { fg = theme.syn.control_flow, italic = true, bold = true },
        ["@keyword.debug"] = { fg = theme.syn.keyword },
        ["@keyword.exception"] = { fg = theme.syn.control_flow, italic = true, bold = true },
        ["@keyword.conditional"] = { fg = theme.syn.control_flow, italic = true, bold = true },
        ["@keyword.conditional.ternary"] = { fg = theme.syn.operator },
        ["@keyword.directive"] = { fg = theme.syn.preproc },
        ["@keyword.directive.define"] = { fg = theme.syn.preproc },

        ["@punctuation.delimiter"] = { fg = theme.syn.punct },
        ["@punctuation.bracket"] = { fg = theme.syn.punct },
        ["@punctuation.special"] = { fg = theme.syn.special1 },

        ["@comment"] = { link = "Comment" },
        ["@comment.documentation"] = { fg = theme.syn.comment },
        ["@comment.error"] = { fg = theme.diag.error },
        ["@comment.warning"] = { fg = theme.diag.warning },
        ["@comment.todo"] = { fg = theme.diag.info },
        ["@comment.note"] = { fg = theme.diag.hint },

        ["@markup.strong"] = { bold = true },
        ["@markup.italic"] = { italic = true },
        ["@markup.strikethrough"] = { strikethrough = true },
        ["@markup.underline"] = { underline = true },

        ["@markup.heading"] = { fg = theme.syn.fun, bold = true },
        ["@markup.heading.1"] = { fg = theme.syn.fun, bold = true },
        ["@markup.heading.2"] = { fg = theme.syn.fun, bold = true },
        ["@markup.heading.3"] = { fg = theme.syn.fun, bold = true },
        ["@markup.heading.4"] = { fg = theme.syn.fun, bold = true },
        ["@markup.heading.5"] = { fg = theme.syn.fun, bold = true },
        ["@markup.heading.6"] = { fg = theme.syn.fun, bold = true },

        ["@markup.quote"] = { fg = theme.syn.comment, italic = true },
        ["@markup.math"] = { fg = theme.syn.special1 },

        ["@markup.link"] = { fg = theme.syn.special3 },
        ["@markup.link.label"] = { fg = theme.syn.special1 },
        ["@markup.link.url"] = { fg = theme.syn.string, underline = true },

        ["@markup.raw"] = { fg = theme.syn.string },
        ["@markup.raw.block"] = { fg = theme.syn.string },

        ["@markup.list"] = { fg = theme.syn.special1 },
        ["@markup.list.checked"] = { fg = theme.diag.ok },
        ["@markup.list.unchecked"] = { fg = theme.syn.comment },

        ["@diff.plus"] = { fg = theme.vcs.added },
        ["@diff.minus"] = { fg = theme.vcs.removed },
        ["@diff.delta"] = { fg = theme.vcs.changed },

        ["@tag"] = { fg = theme.syn.special3 },
        ["@tag.attribute"] = { fg = theme.syn.identifier },
        ["@tag.delimiter"] = { fg = theme.syn.punct },

        ["@none"] = {},
        ["@conceal"] = { link = "Conceal" },

        ["@spell"] = {},
        ["@nospell"] = {},
    }
end

return M
