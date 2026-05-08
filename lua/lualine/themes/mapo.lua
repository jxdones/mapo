local p = require("mapo.colors")
local M = {}

-- normal: blue, steel LED signage
M.normal = {
	a = { fg = p.bg,      bg = p.blue,    gui = "bold" },
	b = { fg = p.fg,      bg = p.bg_sel               },
	c = { fg = p.comment, bg = p.bg                   },
}

-- insert: cyan, electric neon active
M.insert = {
	a = { fg = p.bg,      bg = p.cyan,    gui = "bold" },
	b = { fg = p.fg,      bg = p.bg_sel               },
	c = { fg = p.comment, bg = p.bg                   },
}

-- visual: magenta, karaoke sign glow
M.visual = {
	a = { fg = p.bg,      bg = p.magenta, gui = "bold" },
	b = { fg = p.fg,      bg = p.bg_sel               },
	c = { fg = p.comment, bg = p.bg                   },
}

-- replace: red, alert concrete
M.replace = {
	a = { fg = p.bg,      bg = p.red,     gui = "bold" },
	b = { fg = p.fg,      bg = p.bg_sel               },
	c = { fg = p.comment, bg = p.bg                   },
}

-- command: yellow, taxi headlights
M.command = {
	a = { fg = p.bg,      bg = p.yellow,  gui = "bold" },
	b = { fg = p.fg,      bg = p.bg_sel               },
	c = { fg = p.comment, bg = p.bg                   },
}

-- terminal: orange, convenience store warmth
M.terminal = {
	a = { fg = p.bg,      bg = p.orange,  gui = "bold" },
	b = { fg = p.fg,      bg = p.bg_sel               },
	c = { fg = p.comment, bg = p.bg                   },
}

-- inactive: concrete 
M.inactive = {
	a = { fg = p.comment, bg = p.bg_sel               },
	b = { fg = p.comment, bg = p.bg_sel               },
	c = { fg = p.comment, bg = p.bg                   },
}

return M
