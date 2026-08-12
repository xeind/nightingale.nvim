local util = require("nightingale.extra.util")

local M = {}

--- Registry of generated extras: module name -> { ext, dir, label, url }
--- `dir` overrides the output folder name when it can't match the Lua
--- module name (e.g. hyphens), following the extras/windows-terminal convention.
---@type table<string, {ext:string, dir?:string, label:string, url:string}>
-- stylua: ignore
M.extras = {
  claude_code = { ext = "json",     dir = "claude-code", label = "Claude Code", url = "https://claude.com/claude-code" },
  codex       = { ext = "tmTheme",  label = "Codex CLI",    url = "https://github.com/openai/codex" },
  zellij      = { ext = "kdl",      label = "Zellij",       url = "https://zellij.dev" },
  btop        = { ext = "theme",    label = "Btop++",       url = "https://github.com/aristocratos/btop" },
  delta       = { ext = "gitconfig",label = "Delta",        url = "https://github.com/dandavison/delta" },
  yazi        = { ext = "toml",     label = "Yazi",         url = "https://github.com/sxyazi/yazi" },
  gitui       = { ext = "ron",      label = "GitUI",        url = "https://github.com/extrawurst/gitui" },
  herdr       = { ext = "toml",     label = "Herdr",        url = "https://herdr.dev" },
  gemini_cli  = { ext = "json",     dir = "gemini-cli", label = "Gemini CLI", url = "https://github.com/google-gemini/gemini-cli" },
  pi          = { ext = "json",     label = "Pi",           url = "https://github.com/badlogic/pi-mono" },
}

--- Build the flat color table used by every extra template.
--- Palette field names are reused verbatim; `terminal_*` are added as
--- aliases onto the palette entries that already double as ANSI colors
--- (see the "terminal.ansiX" comments in lua/nightingale/colors.lua).
---@return table<string, string>
local function build_colors()
	local palette = require("nightingale.colors").setup().palette

	local colors = vim.deepcopy(palette)
	colors.terminal_black = palette.bg0
	colors.terminal_black_bright = palette.gray
	colors.terminal_red = palette.red2
	colors.terminal_red_bright = palette.red3
	colors.terminal_green = palette.green2
	colors.terminal_green_bright = palette.green3
	colors.terminal_yellow = palette.yellow2
	colors.terminal_yellow_bright = palette.yellow3
	colors.terminal_blue = palette.blue3
	colors.terminal_blue_bright = palette.blue4
	colors.terminal_magenta = palette.purple2
	colors.terminal_magenta_bright = palette.purple3
	colors.terminal_cyan = palette.cyan2
	colors.terminal_cyan_bright = palette.cyan3
	colors.terminal_white = palette.fg2
	colors.terminal_white_bright = palette.fg

	return colors
end

function M.setup()
	local colors = build_colors()

	---@type string[]
	local names = vim.tbl_keys(M.extras)
	table.sort(names)

	for _, name in ipairs(names) do
		local info = M.extras[name]
		local plugin = require("nightingale.extra." .. name)
		local fname = (info.dir or name) .. "/nightingale." .. info.ext
		fname = fname:gsub("%.$", "")
		print("[write] extras/" .. fname)
		util.write("extras/" .. fname, plugin.generate(colors))
	end
end

M.setup()

return M
