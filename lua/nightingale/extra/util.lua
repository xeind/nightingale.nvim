local M = {}

--- Substitute ${key} placeholders in `str` with values from `colors`.
---@param str string
---@param colors table<string, string>
---@return string
function M.template(str, colors)
	return (
		str:gsub("%${([%w_]+)}", function(key)
			local value = colors[key]
			assert(value, "missing color: " .. key)
			return value
		end)
	)
end

--- Write `content` to `path`, creating parent directories as needed.
---@param path string
---@param content string
function M.write(path, content)
	local dir = vim.fn.fnamemodify(path, ":h")
	vim.fn.mkdir(dir, "p")
	local file = assert(io.open(path, "w"))
	file:write(content)
	file:close()
end

return M
