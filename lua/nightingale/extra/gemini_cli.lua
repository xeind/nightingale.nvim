local util = require("nightingale.extra.util")

local M = {}

--- @param colors table<string, string>
function M.generate(colors)
	return util.template(
		[[
{
  "name": "Nightingale",
  "type": "custom",
  "text": {
    "primary": "${fg2}",
    "secondary": "${fg3}",
    "response": "${fg2}"
  },
  "background": {
    "primary": "${bg0}",
    "diff": {
      "added": "${diffAdd}",
      "removed": "${diffDelete}"
    }
  },
  "border": {
    "default": "${bg4}",
    "focused": "${blue}"
  },
  "ui": {
    "comment": "${gray}",
    "symbol": "${fg3}",
    "gradient": ["${blue}", "${purple}", "${cyan}"]
  },
  "Background": "${bg0}",
  "Foreground": "${fg2}",
  "LightBlue": "${blue4}",
  "AccentBlue": "${blue}",
  "AccentPurple": "${purple}",
  "AccentCyan": "${cyan}",
  "AccentGreen": "${green}",
  "AccentYellow": "${yellow3}",
  "AccentRed": "${red3}",
  "DiffAdded": "${diffAdd}",
  "DiffRemoved": "${diffDelete}",
  "Comment": "${gray}",
  "Gray": "${fg3}",
  "DarkGray": "${bg1}",
  "GradientColors": ["${blue}", "${purple}", "${cyan}"]
}
]],
		colors
	)
end

return M
