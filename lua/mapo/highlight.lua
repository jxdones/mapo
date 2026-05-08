local M = {}

function M.setup()
	local p = require("mapo.colors")
	-- highlight function
	local hl = function(group, opts)
		vim.api.nvim_set_hl(0, group, opts)
	end

	hl("Normal",      { fg = p.fg, bg = p.bg })
	hl("NormalNC",    { fg = p.fg, bg = p.bg })
	hl("NormalFloat", { fg = p.fg, bg = p.bg_sel })

	hl("CursorLine",   { bg = p.bg_sel })
	hl("CursorLineNr", { fg = p.yellow, bg = p.bg_sel })
	hl("CursorColumn", { bg = p.bg_sel })

	hl("LineNr",      { fg = p.comment })
	hl("SignColumn",  { fg = p.comment, bg = p.bg })
	hl("ColorColumn", { bg = p.bg_sel })

	hl("Visual",    { fg = p.fg, bg = p.comment })
	hl("VisualNOS", { fg = p.fg, bg = p.comment })

	hl("StatusLine",   { fg = p.punct,   bg = p.bg_sel })
	hl("StatusLineNC", { fg = p.comment, bg = p.bg_sel })
	hl("WinSeparator", { fg = p.bg_sel })
	hl("VertSplit",    { fg = p.bg_sel })

	hl("TabLine",     { fg = p.comment, bg = p.bg_sel })
	hl("TabLineSel",  { fg = p.fg,      bg = p.bg })
	hl("TabLineFill", { bg = p.bg_sel })

	hl("Pmenu",      { fg = p.fg,  bg = p.bg_sel })
	hl("PmenuSel",   { fg = p.bg,  bg = p.green })
	hl("PmenuSbar",  { bg = p.bg_sel })
	hl("PmenuThumb", { bg = p.comment })

	hl("Search",    { fg = p.bg, bg = p.yellow })
	hl("IncSearch", { fg = p.bg, bg = p.cyan })
	hl("CurSearch", { fg = p.bg, bg = p.cyan })

	hl("MatchParen",  { fg = p.cyan,    bold = true })
	hl("Folded",      { fg = p.comment, bg = p.bg_sel, italic = true })
	hl("FoldColumn",  { fg = p.comment, bg = p.bg })

	hl("NonText",    { fg = p.bg_sel })
	hl("Whitespace", { fg = p.bg_sel })
	hl("SpecialKey", { fg = p.comment })
	hl("EndOfBuffer",{ fg = p.bg_sel })

	hl("Title",     { fg = p.green, bold = true })
	hl("Directory", { fg = p.blue })

	hl("Question",   { fg = p.green })
	hl("MoreMsg",    { fg = p.green })
	hl("ModeMsg",    { fg = p.fg,     bold = true })
	hl("ErrorMsg",   { fg = p.red })
	hl("WarningMsg", { fg = p.yellow })
	hl("WildMenu",   { fg = p.bg,     bg = p.cyan })
	hl("QuickFixLine",{ bg = p.bg_sel, bold = true })
	hl("Conceal",    { fg = p.comment })

	hl("Cursor",  { fg = p.bg, bg = p.fg })
	hl("lCursor", { fg = p.bg, bg = p.fg })

	hl("DiffAdd",    { fg = p.bg, bg = p.green })
	hl("DiffChange", { fg = p.bg, bg = p.yellow })
	hl("DiffDelete", { fg = p.bg, bg = p.red })
	hl("DiffText",   { fg = p.bg, bg = p.blue, bold = true })

	hl("SpellBad",   { undercurl = true, sp = p.red })
	hl("SpellCap",   { undercurl = true, sp = p.blue })
	hl("SpellRare",  { undercurl = true, sp = p.magenta })
	hl("SpellLocal", { undercurl = true, sp = p.yellow })

	hl("DiagnosticError", { fg = p.red })
	hl("DiagnosticWarn",  { fg = p.yellow })
	hl("DiagnosticInfo",  { fg = p.blue })
	hl("DiagnosticHint",  { fg = p.comment })
	hl("DiagnosticUnderlineError", { undercurl = true, sp = p.red })
	hl("DiagnosticUnderlineWarn",  { undercurl = true, sp = p.yellow })
	hl("DiagnosticUnderlineInfo",  { undercurl = true, sp = p.blue })
	hl("DiagnosticUnderlineHint",  { undercurl = true, sp = p.comment })

	-- syntax — classic groups
	hl("Comment", { fg = p.comment, italic = true })

	hl("Constant",  { fg = p.magenta })
	hl("String",    { fg = p.yellow })
	hl("Character", { fg = p.yellow })
	hl("Number",    { fg = p.red })
	hl("Float",     { fg = p.red })
	hl("Boolean",   { fg = p.magenta })

	hl("Identifier", { fg = p.fg })
	hl("Function",   { fg = p.green })
	hl("Namespace",  { fg = p.namespace })

	hl("Statement",   { fg = p.blue })
	hl("Keyword",     { fg = p.blue })
	hl("Conditional", { fg = p.blue })
	hl("Repeat",      { fg = p.blue })
	hl("Label",       { fg = p.blue })
	hl("Operator",    { fg = p.cyan })
	hl("Exception",   { fg = p.blue })

	hl("PreProc",   { fg = p.magenta })
	hl("Include",   { fg = p.blue })
	hl("Define",    { fg = p.magenta })
	hl("Macro",     { fg = p.magenta })
	hl("PreCondit", { fg = p.magenta })

	hl("Type",         { fg = p.orange })
	hl("StorageClass", { fg = p.blue })
	hl("Structure",    { fg = p.blue })
	hl("Typedef",      { fg = p.orange })

	hl("Special",        { fg = p.cyan })
	hl("SpecialChar",    { fg = p.orange })
	hl("Tag",            { fg = p.green })
	hl("Delimiter",      { fg = p.punct })
	hl("SpecialComment", { fg = p.comment, bold = true })
	hl("Debug",          { fg = p.red })

	hl("Underlined", { fg = p.blue, underline = true })
	hl("Italic",     { italic = true })
	hl("Bold",       { bold = true })
	hl("Ignore",     { fg = p.comment })
	hl("Error",      { fg = p.red })
	hl("Todo",       { fg = p.yellow, bold = true })

	-- treesitter
	hl("@comment",               { link = "Comment" })
	hl("@comment.documentation", { link = "Comment" })

	hl("@keyword",             { link = "Keyword" })
	hl("@keyword.function",    { link = "Keyword" })
	hl("@keyword.operator",    { link = "Operator" })
	hl("@keyword.return",      { link = "Keyword" })
	hl("@keyword.import",      { link = "Keyword" })
	hl("@keyword.type",        { link = "Keyword" })
	hl("@keyword.modifier",    { link = "Keyword" })
	hl("@keyword.repeat",      { link = "Repeat" })
	hl("@keyword.conditional", { link = "Conditional" })
	hl("@keyword.exception",   { link = "Exception" })

	hl("@function",             { link = "Function" })
	hl("@function.call",        { link = "Function" })
	hl("@function.builtin",     { link = "Function" })
	hl("@function.method",      { link = "Function" })
	hl("@function.method.call", { link = "Function" })
	hl("@function.macro",       { link = "Macro" })

	hl("@type",            { link = "Type" })
	hl("@type.builtin",    { link = "Type" })
	hl("@type.definition", { link = "Type" })

	hl("@variable",           { link = "Identifier" })
	hl("@variable.builtin",   { link = "Keyword" })
	hl("@variable.parameter", { link = "Identifier" })
	hl("@variable.member",    { link = "Identifier" })

	hl("@string",         { link = "String" })
	hl("@string.escape",  { link = "SpecialChar" })
	hl("@string.special", { link = "SpecialChar" })

	hl("@number",       { link = "Number" })
	hl("@number.float", { link = "Float" })
	hl("@boolean",      { link = "Boolean" })

	hl("@operator",              { link = "Operator" })
	hl("@punctuation",           { link = "Delimiter" })
	hl("@punctuation.bracket",   { link = "Delimiter" })
	hl("@punctuation.delimiter", { link = "Delimiter" })

	hl("@constant",        { link = "Constant" })
	hl("@constant.builtin",{ link = "Constant" })
	hl("@constant.macro",  { link = "Macro" })

	hl("@attribute",         { link = "PreProc" })
	hl("@attribute.builtin", { link = "PreProc" })
	hl("@label",             { link = "Label" })

	hl("@namespace",         { link = "Namespace" })
	hl("@namespace.builtin", { link = "Namespace" })
	hl("@module",            { link = "Namespace" })
	hl("@module.builtin",    { link = "Namespace" })

	hl("@tag",           { link = "Tag" })
	hl("@tag.attribute", { link = "Identifier" })
	hl("@tag.delimiter", { link = "Delimiter" })

	hl("@markup.heading", { link = "Title" })
	hl("@markup.link",    { link = "Underlined" })
	hl("@markup.italic",  { link = "Italic" })
	hl("@markup.bold",    { link = "Bold" })
	hl("@markup.raw",     { link = "String" })

	-- lsp semantic tokens
	hl("@lsp.type.function",   { link = "Function" })
	hl("@lsp.type.method",     { link = "Function" })
	hl("@lsp.type.keyword",    { link = "Keyword" })
	hl("@lsp.type.type",       { link = "Type" })
	hl("@lsp.type.class",      { link = "Type" })
	hl("@lsp.type.interface",  { link = "Type" })
	hl("@lsp.type.struct",     { link = "Type" })
	hl("@lsp.type.enum",       { link = "Type" })
	hl("@lsp.type.enumMember", { link = "Constant" })
	hl("@lsp.type.parameter",  { link = "Identifier" })
	hl("@lsp.type.variable",   { link = "Identifier" })
	hl("@lsp.type.property",   { link = "Identifier" })
	hl("@lsp.type.namespace",  { link = "Namespace" })
	hl("@lsp.type.macro",      { link = "Macro" })
	hl("@lsp.type.string",     { link = "String" })
	hl("@lsp.type.number",     { link = "Number" })
	hl("@lsp.type.operator",   { link = "Operator" })
	hl("@lsp.mod.deprecated",  { link = "Comment" })

	-- gitsigns
	hl("GitSignsAdd",          { fg = p.cyan })
	hl("GitSignsChange",       { fg = p.yellow })
	hl("GitSignsDelete",       { fg = p.red })
	hl("GitSignsTopDelete",    { fg = p.red })
	hl("GitSignsChangeDelete", { fg = p.red })

	hl("GitSignsAddNr",    { fg = p.cyan })
	hl("GitSignsChangeNr", { fg = p.yellow })
	hl("GitSignsDeleteNr", { fg = p.red })

	hl("GitSignsAddLn",    { bg = p.bg_sel })
	hl("GitSignsChangeLn", { bg = p.bg_sel })

	hl("GitSignsAddPreview",    { fg = p.cyan,   bg = p.bg_sel })
	hl("GitSignsDeletePreview", { fg = p.red,    bg = p.bg_sel })

end

return M
