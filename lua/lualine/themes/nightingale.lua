local theme = require("nightingale.colors").setup().theme

local nightingale = {}

nightingale.normal = {
	a = { bg = theme.syn.fun, fg = theme.ui.bg },
	b = { bg = theme.diff.change, fg = theme.syn.fun },
	c = { bg = theme.ui.bg_p1, fg = theme.ui.fg },
}

nightingale.insert = {
	a = { bg = theme.diag.ok, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.diag.ok },
}

nightingale.command = {
	a = { bg = theme.syn.operator, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.operator },
}

nightingale.visual = {
	a = { bg = theme.syn.keyword, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.keyword },
}

nightingale.replace = {
	a = { bg = theme.syn.constant, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.constant },
}

nightingale.inactive = {
	a = { bg = theme.ui.bg_dim, fg = theme.ui.fg_dim },
	b = { bg = theme.ui.bg_dim, fg = theme.ui.fg_dim, gui = "bold" },
	c = { bg = theme.ui.bg_dim, fg = theme.ui.fg_dim },
}

if vim.g.nightingale_lualine_bold then
	for _, mode in pairs(nightingale) do
		mode.a.gui = "bold"
	end
end

return nightingale
