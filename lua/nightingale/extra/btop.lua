local util = require("nightingale.extra.util")

local M = {}

--- @param colors table<string, string>
function M.generate(colors)
	return util.template(
		[[
# Theme: Nightingale
# https://github.com/xeind/nightingale.nvim

theme[main_bg]="${bg0}"
theme[main_fg]="${fg2}"

# Title color for boxes
theme[title]="${fg}"

# Highlight color for keyboard shortcuts
theme[hi_fg]="${orange}"

# Selected item in processes box
theme[selected_bg]="${bg4}"
theme[selected_fg]="${cyan}"

# Misc colors for processes box including mini cpu graphs, details memory graph and details status text
theme[proc_misc]="${cyan}"

# Cpu box outline color
theme[cpu_box]="${border2}"

# Memory/disks box outline color
theme[mem_box]="${border2}"

# Net up/down box outline color
theme[net_box]="${border2}"

# Processes box outline color
theme[proc_box]="${border2}"

# Box divider line and small boxes line color
theme[div_line]="${border2}"

# Temperature graph colors
theme[temp_start]="${green}"
theme[temp_mid]="${yellow3}"
theme[temp_end]="${red}"

# CPU graph colors
theme[cpu_start]="${green}"
theme[cpu_mid]="${yellow3}"
theme[cpu_end]="${red}"

# Mem/Disk free meter
theme[free_start]="${green}"
theme[free_mid]="${yellow3}"
theme[free_end]="${red}"

# Mem/Disk cached meter
theme[cached_start]="${green}"
theme[cached_mid]="${yellow3}"
theme[cached_end]="${red}"

# Mem/Disk available meter
theme[available_start]="${green}"
theme[available_mid]="${yellow3}"
theme[available_end]="${red}"

# Mem/Disk used meter
theme[used_start]="${green}"
theme[used_mid]="${yellow3}"
theme[used_end]="${red}"

# Download graph colors
theme[download_start]="${green}"
theme[download_mid]="${yellow3}"
theme[download_end]="${red}"

# Upload graph colors
theme[upload_start]="${green}"
theme[upload_mid]="${yellow3}"
theme[upload_end]="${red}"
]],
		colors
	)
end

return M
