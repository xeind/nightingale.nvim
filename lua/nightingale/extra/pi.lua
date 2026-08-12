local util = require("nightingale.extra.util")

local M = {}

--- @param colors table<string, string>
function M.generate(colors)
	return util.template(
		[[
{
  "$schema": "https://raw.githubusercontent.com/badlogic/pi-mono/main/packages/coding-agent/src/modes/interactive/theme/theme-schema.json",
  "name": "Nightingale",
  "colors": {
    "accent": "${blue}",
    "border": "${border2}",
    "borderAccent": "${cyan}",
    "borderMuted": "${border0}",
    "success": "${green}",
    "error": "${error}",
    "warning": "${warning}",
    "muted": "${fg3}",
    "dim": "${gray3}",
    "text": "",
    "thinkingText": "${gray}",

    "selectedBg": "${selection}",
    "userMessageBg": "${bg1}",
    "userMessageText": "",
    "customMessageBg": "${bg1}",
    "customMessageText": "",
    "customMessageLabel": "${purple}",
    "toolPendingBg": "${bg3}",
    "toolSuccessBg": "${bg3}",
    "toolErrorBg": "${diffDelete}",
    "toolTitle": "",
    "toolOutput": "${fg3}",

    "mdHeading": "${blue}",
    "mdLink": "${cyan}",
    "mdLinkUrl": "${gray}",
    "mdCode": "${blue}",
    "mdCodeBlock": "${bg1}",
    "mdCodeBlockBorder": "${gray}",
    "mdQuote": "${gray}",
    "mdQuoteBorder": "${gray}",
    "mdHr": "${orange}",
    "mdListBullet": "${orange}",

    "toolDiffAdded": "${diffAdd}",
    "toolDiffRemoved": "${diffDelete}",
    "toolDiffContext": "${diffText}",

    "syntaxComment": "${gray}",
    "syntaxKeyword": "${purple}",
    "syntaxFunction": "${blue}",
    "syntaxVariable": "${fg2}",
    "syntaxString": "${green}",
    "syntaxNumber": "${orange}",
    "syntaxType": "${cyan}",
    "syntaxOperator": "${yellow3}",
    "syntaxPunctuation": "${fg3}",

    "thinkingOff": "${gray2}",
    "thinkingMinimal": "${gray3}",
    "thinkingLow": "${blue7}",
    "thinkingMedium": "${blue}",
    "thinkingHigh": "${purple3}",
    "thinkingXhigh": "${purple}",

    "bashMode": "${orange}"
  }
}
]],
		colors
	)
end

return M
