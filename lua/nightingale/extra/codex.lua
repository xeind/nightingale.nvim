local util = require("nightingale.extra.util")

local M = {}

--- Codex CLI reads custom themes as standard TextMate .tmTheme files
--- dropped into $CODEX_HOME/themes/.
--- @param colors table<string, string>
function M.generate(colors)
	return util.template(
		[[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>name</key>
	<string>Nightingale</string>
	<key>settings</key>
	<array>
		<dict>
			<key>settings</key>
			<dict>
				<key>background</key>
				<string>${bg0}</string>
				<key>foreground</key>
				<string>${fg2}</string>
				<key>caret</key>
				<string>${fg}</string>
				<key>lineHighlight</key>
				<string>${bg4}</string>
				<key>selection</key>
				<string>${selection}</string>
				<key>invisibles</key>
				<string>${gray2}</string>
				<key>gutterForeground</key>
				<string>${gray2}</string>
				<key>findHighlight</key>
				<string>${search}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Comment</string>
			<key>scope</key>
			<string>comment</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${gray}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>String</string>
			<key>scope</key>
			<string>string</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${green}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Number</string>
			<key>scope</key>
			<string>constant.numeric</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${number}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Constant</string>
			<key>scope</key>
			<string>constant.language, constant.character, constant.other</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${orange}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Keyword</string>
			<key>scope</key>
			<string>keyword, keyword.control</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>bold</string>
				<key>foreground</key>
				<string>${purple}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Storage</string>
			<key>scope</key>
			<string>storage, storage.type</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${purple2}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Entity Name Function</string>
			<key>scope</key>
			<string>entity.name.function</string>
			<key>settings</key>
			<dict>
				<key>fontStyle</key>
				<string>italic</string>
				<key>foreground</key>
				<string>${blue}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Entity Name Tag</string>
			<key>scope</key>
			<string>entity.name.tag</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${blue2}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Support Type</string>
			<key>scope</key>
			<string>support.type, entity.name.type</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${cyan}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Variable</string>
			<key>scope</key>
			<string>variable, variable.parameter</string>
			<key>settings</key>
			<dict>
				<key>foreground</key>
				<string>${variable}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Invalid</string>
			<key>scope</key>
			<string>invalid, invalid.illegal</string>
			<key>settings</key>
			<dict>
				<key>background</key>
				<string>${red}</string>
				<key>foreground</key>
				<string>${bg0}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Diff Inserted</string>
			<key>scope</key>
			<string>markup.inserted</string>
			<key>settings</key>
			<dict>
				<key>background</key>
				<string>${diffAdd}</string>
				<key>foreground</key>
				<string>${gitAdded}</string>
			</dict>
		</dict>
		<dict>
			<key>name</key>
			<string>Diff Deleted</string>
			<key>scope</key>
			<string>markup.deleted</string>
			<key>settings</key>
			<dict>
				<key>background</key>
				<string>${diffDelete}</string>
				<key>foreground</key>
				<string>${gitRemoved}</string>
			</dict>
		</dict>
	</array>
	<key>uuid</key>
	<string>2f9c6b0a-6b1c-4e8a-9e1a-nightingale01</string>
</dict>
</plist>
]],
		colors
	)
end

return M
