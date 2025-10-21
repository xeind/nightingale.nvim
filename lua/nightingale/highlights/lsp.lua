local M = {}

---@param theme ThemeColors
---@param config NightingaleConfig
---@return table<string,HlSpec>
function M.setup(theme, config)
	return {
		LspInfoBorder = { link = "FloatBorder" },

		LspInlayHint = { fg = theme.syn.comment, bg = theme.ui.bg_p1 },

		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.decorator"] = { fg = theme.syn.decorator },
		["@lsp.type.enum"] = { fg = theme.syn.enum },
		["@lsp.type.enumMember"] = { link = "@constant" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.interface"] = { fg = theme.syn.interface },
		["@lsp.type.macro"] = { fg = theme.syn.macro },
		["@lsp.type.method"] = { fg = theme.syn.method },
		["@lsp.type.namespace"] = { fg = theme.syn.namespace },
		["@lsp.type.parameter"] = { link = "@variable.parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.struct"] = { link = "@type" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.typeParameter"] = { link = "@type.definition" },
		["@lsp.type.variable"] = { link = "@variable" },

		["@lsp.mod.deprecated"] = { fg = theme.syn.deprecated, strikethrough = true },
		["@lsp.mod.readonly"] = { link = "@constant" },
		["@lsp.mod.static"] = { italic = true },
		["@lsp.mod.abstract"] = { italic = true },
		["@lsp.mod.async"] = { italic = true },
		["@lsp.mod.documentation"] = { fg = theme.syn.comment },

		["@lsp.typemod.class.static"] = { fg = theme.syn.type, italic = true },
		["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.function.static"] = { fg = theme.syn.fun, italic = true },
		["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.method.static"] = { fg = theme.syn.method, italic = true },
		["@lsp.typemod.variable.defaultLibrary"] = { fg = theme.syn.builtin_var, italic = true },
		["@lsp.typemod.variable.global"] = { link = "@constant" },
		["@lsp.typemod.variable.static"] = { link = "@constant" },

		-- Semantic token mappings (from VSCode Nightingale `semanticTokenColors`)
		-- Map VSCode semantic tokens to Neovim @lsp.* groups so JS/TS highlights
		-- (numberLiteral, stringLiteral, property.declaration, variable.declaration, readonly, selfParameter, newOperator)

		["@lsp.typemod.operator.controlFlow"] = { fg = theme.syn.control_flow }, -- newOperator / control-flow operator
		["@lsp.type.stringLiteral"] = { link = "@string" },
		["@lsp.type.string"] = { link = "@string" },
		["@lsp.type.customLiteral"] = { fg = theme.ui.fg },
		["@lsp.type.numberLiteral"] = { fg = theme.syn.number, italic = true },

		["@lsp.type.property.declaration"] = { fg = theme.syn.property_decl },
		["@lsp.type.variable.declaration"] = { fg = theme.syn.variable },
		["@lsp.typemod.variable.readonly"] = { fg = theme.syn.constant },

		["@lsp.type.selfParameter"] = { fg = theme.syn.operator, italic = true },
	}
end

return M
