local util = require("nightingale.extra.util")

local M = {}

--- @param colors table<string, string>
function M.generate(colors)
	return util.template(
		[[
# Nightingale for Herdr
# Herdr has no custom theme files: pick the closest built-in, then override
# every token. Append this to ~/.config/herdr/config.toml.

[theme]
name = "kanagawa"

[theme.custom]
accent = "#c6b18e"
panel_bg = "${bg0}"
# sidebar_bg = "${sideBarBg}"  # uncomment for an opaque desktop sidebar
surface0 = "${sideBarBg}"
surface1 = "${bg3}"
surface_dim = "${bg7}"
overlay0 = "${gray}"
overlay1 = "${gray3}"
text = "${fg3}"
subtext0 = "${gray6}"
mauve = "${purple}"
green = "${green}"
yellow = "${yellow3}"
red = "${pink4}"
blue = "${blue}"
teal = "${cyan}"
peach = "${orange}"
]],
		colors
	)
end

return M
