local M = {}

---@param theme ThemeColors
---@param config NightingaleConfig
---@return table<string,HlSpec>
function M.setup(theme, config)
	return {
		LspInfoBorder = { link = "FloatBorder" },

		LspInlayHint = { fg = theme.syn.comment, bg = theme.ui.bg_p1 },

		-- LSP semantic token types
		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.decorator"] = { fg = theme.syn.decorator },
		["@lsp.type.enum"] = { fg = theme.syn.enum },
		["@lsp.type.enumMember"] = { link = "@constant" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.interface"] = { fg = theme.syn.interface },
		["@lsp.type.macro"] = { link = "@function.macro" },
		["@lsp.type.method"] = { link = "@function.method" },
		["@lsp.type.namespace"] = { link = "@module" },
		["@lsp.type.parameter"] = { link = "@variable.parameter" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.struct"] = { link = "@type" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.typeParameter"] = { link = "@type.definition" },
		["@lsp.type.variable"] = { fg = "none" },
		["@lsp.type.comment"] = { link = "Comment" },

	-- Additional LSP types
	["@lsp.type.boolean"] = { link = "@boolean" },
	["@lsp.type.builtinType"] = { link = "@type.builtin" },
	["@lsp.type.const"] = { link = "@constant" },
	["@lsp.type.comparison"] = { link = "@operator" },
	["@lsp.type.bitwise"] = { link = "@operator" },
	["@lsp.type.punctuation"] = { link = "Delimiter" },
	["@lsp.type.selfParameter"] = { link = "@variable.builtin" },
	["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
	["@lsp.type.selfTypeKeyword"] = { link = "@variable.builtin" },
	["@lsp.type.builtinConstant"] = { link = "@constant.builtin" },
	["@lsp.type.magicFunction"] = { link = "@function.builtin" },
	["@lsp.type.deriveHelper"] = { link = "@attribute" },
	["@lsp.type.escapeSequence"] = { link = "@string.escape" },
	["@lsp.type.formatSpecifier"] = { link = "@markup.list" },
	["@lsp.type.generic"] = { link = "@variable" },
	["@lsp.type.typeAlias"] = { link = "@type.definition" },
	["@lsp.type.unresolvedReference"] = { undercurl = true, sp = theme.diag.error },
	["@lsp.type.operator"] = { link = "@operator" },
	["@lsp.type.number"] = { link = "@number" },
	["@lsp.type.keyword"] = { link = "@keyword" },

		-- LSP modifiers
		["@lsp.mod.deprecated"] = { fg = theme.syn.deprecated, strikethrough = true },
		["@lsp.mod.readonly"] = { link = "@constant" },
		["@lsp.mod.static"] = { italic = true },
		["@lsp.mod.abstract"] = { italic = true },
		["@lsp.mod.async"] = { italic = true },
		["@lsp.mod.documentation"] = { fg = theme.syn.comment },
		["@lsp.mod.typeHint"] = { link = "@type" },

	-- LSP type+modifier combinations (typemods)
	["@lsp.typemod.class.static"] = { fg = theme.syn.type, italic = true },
	["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
	["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
	["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
	["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
	["@lsp.typemod.function.builtin"] = { link = "@function.builtin" },
	["@lsp.typemod.function.static"] = { fg = theme.syn.fun, italic = true },
	["@lsp.typemod.function.readonly"] = { fg = theme.syn.fun, bold = true },
	["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
	["@lsp.typemod.keyword.injected"] = { link = "@keyword" },
	["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
	["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
	["@lsp.typemod.method.static"] = { fg = theme.syn.method, italic = true },
	["@lsp.typemod.operator.injected"] = { link = "@operator" },
	["@lsp.typemod.string.injected"] = { link = "@string" },
	["@lsp.typemod.struct.defaultLibrary"] = { link = "@type.builtin" },
	["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" },
	["@lsp.typemod.typeAlias.defaultLibrary"] = { link = "@type.builtin" },
	["@lsp.typemod.variable.callable"] = { link = "@function" },
	["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
	["@lsp.typemod.variable.global"] = { link = "@constant" },
	["@lsp.typemod.variable.static"] = { link = "@constant" },
	["@lsp.typemod.variable.readonly"] = { fg = theme.syn.constant },
	["@lsp.typemod.variable.injected"] = { link = "@variable" },

	-- Language-specific LSP tokens
	["@lsp.typemod.operator.controlFlow"] = { link = "@keyword.exception" }, -- Rust ? operator
	["@lsp.type.lifetime"] = { link = "@operator" }, -- Rust lifetimes
	["@lsp.typemod.keyword.documentation"] = { link = "Special" },
	["@lsp.type.decorator.rust"] = { link = "PreProc" },
	["@lsp.type.namespace.python"] = { link = "@variable" }, -- Python modules

		-- VS Code semantic token mappings (from Nightingale theme)
		["@lsp.type.stringLiteral"] = { link = "@string" },
		["@lsp.type.string"] = { link = "@string" },
		["@lsp.type.customLiteral"] = { fg = theme.ui.fg },
		["@lsp.type.numberLiteral"] = { fg = theme.syn.number, italic = true },
		["@lsp.type.property.declaration"] = { fg = theme.syn.property_decl },
		["@lsp.type.variable.declaration"] = { fg = theme.syn.variable },
	}
end

return M
