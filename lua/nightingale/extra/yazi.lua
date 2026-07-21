local util = require("nightingale.extra.util")

local M = {}

--- @param colors table<string, string>
function M.generate(colors)
	return util.template(
		[[
[mgr]
# NOTE: can be combined with tmTheme (sublime colorscheme file) for preview code highlight
# syntect_theme = "path/to/tmTheme"

cwd = { fg = "${fg2}", italic = true }

# Hovered
hovered         = { bg = "${bg4}" }
preview_hovered = { bg = "${bg4}" }

# Find
find_keyword  = { fg = "${bg1}", bg = "${orange}", bold = true }
find_position = { fg = "${info}", bg = "${searchBg}", bold = true }

# Marker
marker_copied   = { fg = "${green}", bg = "${green}" }
marker_cut      = { fg = "${red}", bg = "${red}" }
marker_marked   = { fg = "${purple}", bg = "${purple}" }
marker_selected = { fg = "${blue}", bg = "${blue}" }

# Count
count_copied   = { fg = "${bg1}", bg = "${green}" }
count_cut      = { fg = "${bg1}", bg = "${red}" }
count_selected = { fg = "${bg1}", bg = "${blue}" }

# Border
border_symbol = "│"
border_style  = { fg = "${border2}" }

# Tab
[tabs]
active   = { fg = "${bg0}", bg = "${blue}" }
inactive = { fg = "${blue}", bg = "${border2}" }

[mode]
normal_main = { fg = "${bg0}", bg = "${blue}", bold = true }
normal_alt  = { fg = "${blue}", bg = "${border2}" }

select_main = { fg = "${bg0}", bg = "${purple}", bold = true }
select_alt  = { fg = "${purple}", bg = "${border2}" }

unset_main  = { fg = "${bg0}", bg = "${purple2}", bold = true }
unset_alt   = { fg = "${purple2}", bg = "${border2}" }

[status]
overall   = { fg = "${fg}", bg = "${bg1}" }
sep_left  = { open = "", close = "" }
sep_right = { open = "", close = "" }

# Progress
progress_label  = { fg = "${fg}", bold = true }
progress_normal = { fg = "${blue3}", bg = "${bg4}" }
progress_error  = { fg = "${error}", bg = "${bg4}" }

# Permissions
perm_type  = { fg = "${blue}" }
perm_read  = { fg = "${yellow3}" }
perm_write = { fg = "${red}" }
perm_exec  = { fg = "${green}" }
perm_sep   = { fg = "${terminal_black}" }

[pick]
border   = { fg = "${border2}" }
active   = { fg = "${fg}",  bg = "${selection}" }
inactive = { fg = "${fg}" }

# Input
[input]
border   = { fg = "${blue2}" }
title    = { fg = "${blue2}" }
value    = { fg = "${purple}" }
selected = { bg = "${selection}" }

# Completion
[cmp]
border   = { fg = "${blue2}" }
active   = { fg = "${fg}", bg = "${bg4}" }
inactive = { fg = "${fg}" }

icon_file    = ""
icon_folder  = ""
icon_command = ""

# Tasks
[tasks]
border  = { fg = "${border2}" }
title   = { fg = "${border2}" }
hovered = { fg = "${fg}", bg = "${selection}" }

# Which
[which]
cols            = 3
mask            = { bg = "${bg1}" }
cand            = { fg = "${cyan}" }
rest            = { fg = "${blue}" }
desc            = { fg = "${purple}" }
separator       = " ➜ "
separator_style = { fg = "${gray}" }

# Confirm
[confirm]
border  = { fg = "${blue2}" }
title   = { fg = "${border2}" }
content = {}
list    = {}
btn_yes = { bg = "${selection}" }
btn_no  = {}
btn_labels = [ "  [Y]es  ", "  (N)o  " ]

# Spot
[spot]
border  = { fg = "${border2}" }
title   = { fg = "${border2}" }

# Notify
[notify]
title_info  = { fg = "${info}" }
title_warn  = { fg = "${warning}" }
title_error = { fg = "${error}" }

icon_error = ""
icon_warn = ""
icon_info = ""

# Help
[help]
on      = { fg = "${green}" }
run     = { fg = "${purple}" }
desc    = { fg = "${cyan}" }
hovered = { bg = "${bg4}" }
footer  = { fg = "${fg}", bg = "${bg0}" }

[filetype]

rules = [
	# Images
	{ mime = "image/*", fg = "${yellow3}" },

	# Media
	{ mime = "{audio,video}/*", fg = "${purple}" },

	# Archives
	{ mime = "application/*zip", fg = "${red}" },
	{ mime = "application/x-{tar,bzip*,7z-compressed,xz,rar}", fg = "${red}" },

	# Documents
	{ mime = "application/{pdf,doc,rtf,vnd.*}", fg = "${cyan}" },

	# Special files
	{ name = "*", is = "orphan", bg = "${red}" },
	{ name = "*", is = "exec"  , fg = "${green}" },

	# Fallback
	{ name = "*/", fg = "${blue}" },
	{ name = "*", fg = "${fg}" }
]
]],
		colors
	)
end

return M
