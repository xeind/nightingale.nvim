local util = require("nightingale.extra.util")

local M = {}

--- @param colors table<string, string>
function M.generate(colors)
	return util.template(
		[[
// Nightingale Zellij theme
// Add this file to your `CONFIG_DIR/themes` directory as described here:
// https://zellij.dev/documentation/themes#getting-zellij-to-pick-up-the-theme

themes {
    nightingale {
        fg "${fg2}"
        bg "${bg4}"
        black "${bg0}"
        red "${terminal_red}"
        green "${terminal_green}"
        yellow "${terminal_yellow}"
        blue "${terminal_blue}"
        magenta "${terminal_magenta}"
        cyan "${terminal_cyan}"
        white "${fg}"
        orange "${orange}"
    }
}
]],
		colors
	)
end

return M
