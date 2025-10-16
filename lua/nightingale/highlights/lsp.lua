local M = {}

---@param theme ThemeColors
---@param config NightingaleConfig
---@return table<string,HlSpec>
function M.setup(theme, config)
	return {
		LspInfoBorder = { link = "FloatBorder" },

		LspInlayHint = { fg = theme.syn.comment, bg = theme.ui.bg_p1 },

		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.decorator"] = { link = "@function" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.enumMember"] = { link = "@constant" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.interface"] = { link = "@type" },
		["@lsp.type.macro"] = { link = "@macro" },
		["@lsp.type.method"] = { link = "@function.method" },
		["@lsp.type.namespace"] = { link = "@module" },
		["@lsp.type.parameter"] = { link = "@variable.parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.struct"] = { link = "@type" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.typeParameter"] = { link = "@type.definition" },
		["@lsp.type.variable"] = { link = "@variable" },

		["@lsp.mod.deprecated"] = { fg = theme.syn.deprecated, strikethrough = true },
		["@lsp.mod.readonly"] = { link = "@constant" },

		["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
		["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
		["@lsp.typemod.variable.global"] = { link = "@constant" },
	}
end

return M
