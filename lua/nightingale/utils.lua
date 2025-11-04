local M = {}
local PATH_SEP = vim.uv.os_uname().version:match("Windows") and "\\" or "/"

local get_compiled_path = function(theme)
	theme = theme or "nightingale"
	return table.concat(
		{ vim.fn.stdpath("state"), "nightingale", theme .. "_compiled.lua" },
		PATH_SEP
	)
end

---@param theme string
---@param highlights table
---@param termcolors table
function M.compile(theme, highlights, termcolors)
	vim.uv.fs_mkdir(vim.fn.stdpath("state") .. PATH_SEP .. "nightingale", 448)

	local fname = get_compiled_path(theme)
	local file, err = io.open(fname, "wb")
	if not file or err then
		vim.notify("Nightingale: Error writing " .. fname .. ":\n" .. err, vim.log.levels.ERROR)
		return
	end

	local lines = {
		"require'nightingale'.compiled = string.dump(function()",
		"local g = vim.g",
		"local nvim_set_hl = vim.api.nvim_set_hl",
	}
	local inspect = vim.inspect
	for hl, spec in pairs(highlights) do
		if next(spec) then
			table.insert(lines, ('nvim_set_hl(0, "%s", %s)'):format(hl, inspect(spec):gsub("%s", "")))
		end
	end
	for i, tcolor in ipairs(termcolors) do
		table.insert(lines, ('g["terminal_color_%d"] = "%s"'):format(i - 1, tcolor))
	end
	table.insert(lines, "end)")

	local blob = table.concat(lines, "\n")
	assert(loadstring(blob, "=(compile)"))()
	file:write(require("nightingale").compiled)
	file:close()
end

---@param theme? string
---@return boolean status
function M.load_compiled(theme)
	local f = loadfile(get_compiled_path(theme))
	if f then
		f()
		return true
	end
	return false
end

return M
