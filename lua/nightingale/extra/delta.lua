local util = require("nightingale.extra.util")

local M = {}

--- @param colors table<string, string>
function M.generate(colors)
	return util.template(
		[[
[delta]
  minus-style                   = syntax "${diffDelete}"
  minus-non-emph-style          = syntax "${diffDelete}"
  minus-emph-style              = syntax "${red2}"
  minus-empty-line-marker-style = syntax "${diffDelete}"
  line-numbers-minus-style      = "${gitRemoved}"
  plus-style                    = syntax "${diffAdd}"
  plus-non-emph-style           = syntax "${diffAdd}"
  plus-emph-style               = syntax "${green2}"
  plus-empty-line-marker-style  = syntax "${diffAdd}"
  line-numbers-plus-style       = "${gitAdded}"
  line-numbers-zero-style       = "${gray}"
]],
		colors
	)
end

return M
