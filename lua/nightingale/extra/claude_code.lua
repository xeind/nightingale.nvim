local util = require("nightingale.extra.util")

local M = {}

--- @param colors table<string, string>
function M.generate(colors)
	return util.template(
		[[
{
  "name": "Nightingale",
  "base": "dark",
  "overrides": {
    "claude": "${blue}",
    "claudeShimmer": "${blue4}",
    "text": "${fg}",
    "inverseText": "${bg0}",
    "inactive": "${gray}",
    "subtle": "${fg2}",
    "remember": "${purple}",
    "success": "${green}",
    "error": "${error}",
    "warning": "${warning}",
    "warningShimmer": "${yellow3}",
    "merged": "${purple2}",
    "promptBorder": "${border2}",
    "permission": "${orange}",
    "planMode": "${cyan}",
    "autoAccept": "${green}",
    "bashBorder": "${yellow3}",
    "ide": "${blue3}",
    "fastMode": "${pink}",
    "diffAdded": "${gitAdded}",
    "diffRemoved": "${gitRemoved}",
    "diffAddedDimmed": "${diffAdd}",
    "diffRemovedDimmed": "${diffDelete}",
    "diffAddedWord": "${green2}",
    "diffRemovedWord": "${red2}",
    "userMessageBackground": "${bg4}",
    "selectionBg": "${selection}",
    "red_FOR_SUBAGENTS_ONLY": "${red}",
    "blue_FOR_SUBAGENTS_ONLY": "${blue}",
    "green_FOR_SUBAGENTS_ONLY": "${green}",
    "yellow_FOR_SUBAGENTS_ONLY": "${yellow3}",
    "purple_FOR_SUBAGENTS_ONLY": "${purple}",
    "orange_FOR_SUBAGENTS_ONLY": "${orange}",
    "pink_FOR_SUBAGENTS_ONLY": "${pink}",
    "cyan_FOR_SUBAGENTS_ONLY": "${cyan}"
  }
}
]],
		colors
	)
end

return M
