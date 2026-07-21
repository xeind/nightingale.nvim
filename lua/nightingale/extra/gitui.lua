local util = require("nightingale.extra.util")

local M = {}

--- @param colors table<string, string>
function M.generate(colors)
	return util.template(
		[[
(
  selected_tab: Some("${purple}"),
  command_fg: Some("${gray}"),
  selection_bg: Some("${bg4}"),
  selection_fg: Some("${cyan}"),
  cmdbar_bg: Some("${bg0}"),
  cmdbar_extra_lines_bg: Some("${bg0}"),
  disabled_fg: Some("${gray}"),
  diff_line_add: Some("${green}"),
  diff_line_delete: Some("${red}"),
  diff_file_added: Some("${green2}"),
  diff_file_removed: Some("${red2}"),
  diff_file_moved: Some("${purple3}"),
  diff_file_modified: Some("${yellow3}"),
  commit_hash: Some("${purple}"),
  commit_time: Some("${cyan}"),
  commit_author: Some("${green}"),
  danger_fg: Some("${red}"),
  push_gauge_bg: Some("${bg0}"),
  push_gauge_fg: Some("${fg}"),
  tag_fg: Some("${purple3}"),
  branch_fg: Some("${yellow3}")
)
]],
		colors
	)
end

return M
