local M = {}

---@alias ColorSpec string RGB Hex string
---@alias ColorTable table<string, ColorSpec>
---@alias NightingaleColorsSpec { palette: ColorTable, theme: ColorTable }
---@alias NightingaleColors { palette: PaletteColors, theme: ThemeColors }

---@class NightingaleConfig
M.config = {
	bold = true,
	italics = true,
	undercurl = true,
	commentStyle = { italic = true },
	functionStyle = { italic = true },
	keywordStyle = { italic = true, bold = true },
	statementStyle = {},
	typeStyle = {},
	numberStyle = {},
	transparent = false,
	dimInactive = false,
	terminalColors = true,
	colors = { theme = { nightingale = {}, lightingale = {} }, palette = {} },
	---@type fun(colors: NightingaleColorsSpec): table<string, table>
	overrides = function()
		return {}
	end,
	theme = "nightingale", -- default theme variant
	compile = false,
}

M._DEFAULT_CONFIG = vim.deepcopy(M.config)

local function check_config(_)
	local err
	return not err
end

---@param config? NightingaleConfig
function M.setup(config)
	if check_config(config) then
		M.config = vim.tbl_deep_extend("force", M.config, config or {})
	else
		vim.notify("Nightingale: Errors found while loading user config. Using default config.", vim.log.levels.ERROR)
	end
end

---@param theme? string
function M.load(theme)
	-- Determine which theme to use
	-- Priority: explicit param > config.theme > default
	theme = theme or M.config.theme or "nightingale"
	M._CURRENT_THEME = theme

	package.loaded["nightingale"] = M

	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	-- Set colors_name based on the theme
	vim.g.colors_name = theme == "lightingale" and "lightingale" or "nightingale"
	vim.o.termguicolors = true

	if M.config.compile then
		local utils = require("nightingale.utils")
		if utils.load_compiled(theme) then
			return
		end

		M.compile()
		utils.load_compiled(theme)
	else
		local colors = require("nightingale.colors").setup({ colors = M.config.colors, theme = theme })
		local highlights = require("nightingale.highlights").setup(colors, M.config)
		require("nightingale.highlights").highlight(highlights, M.config.terminalColors and colors.theme.term or {})
	end
end

function M.compile()
	-- Compile both theme variants
	for _, theme in ipairs({ "nightingale", "lightingale" }) do
		local colors = require("nightingale.colors").setup({ colors = M.config.colors, theme = theme })
		local highlights = require("nightingale.highlights").setup(colors, M.config)
		require("nightingale.utils").compile(theme, highlights, M.config.terminalColors and colors.theme.term or {})
	end
end

vim.api.nvim_create_user_command("NightingaleCompile", function()
	for mod, _ in pairs(package.loaded) do
		if mod:match("^nightingale%.") then
			package.loaded[mod] = nil
		end
	end
	M.compile()
	vim.notify("Nightingale: compiled successfully!", vim.log.levels.INFO)
	M.load()
	vim.api.nvim_exec_autocmds("ColorScheme", { modeline = false })
end, {})

return M
