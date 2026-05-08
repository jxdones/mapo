" Mapo.vim — A dark colorscheme inspired by the midnight streets of Seoul
" Created by Jones Dias <@jxdones>

if has('nvim')
  lua require("mapo").load()
  finish
endif

set background=dark
set t_Co=256
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "mapo"

" Palette
" ----------------------------------
"  #0b0f0d  bg
"  #161d19  bg_sel
"  #e8efe9  fg
"  #bbbbbb  punct
"  #7a8a84  namespace
"  #5b6660  comment
"
"  #7fb4ca  keywords
"  #8bd49c  functions
"  #f78c6c  types
"  #e8c46a  strings
"  #c792ea  attributes
"  #3eebab  operators
"  #e67e80  numbers

let s:bg        = ["#0b0f0d", 232]
let s:bg_sel    = ["#161d19", 234]
let s:fg        = ["#e8efe9", 255]
let s:punct     = ["#bbbbbb", 250]
let s:namespace = ["#7a8a84", 102]
let s:comment   = ["#5b6660",  59]

let s:blue      = ["#7fb4ca", 110]
let s:green     = ["#8bd49c", 114]
let s:orange    = ["#f78c6c", 209]
let s:yellow    = ["#e8c46a", 221]
let s:magenta   = ["#c792ea", 177]
let s:cyan      = ["#3eebab",  79]
let s:red       = ["#e67e80", 174]

" Terminal colors
" g:terminal_color_N for Neovim and g:terminal_ansi_colors for Vim 8
let g:terminal_color_0  = s:bg_sel[0]
let g:terminal_color_1  = s:red[0]
let g:terminal_color_2  = s:green[0]
let g:terminal_color_3  = s:yellow[0]
let g:terminal_color_4  = s:blue[0]
let g:terminal_color_5  = s:magenta[0]
let g:terminal_color_6  = s:cyan[0]
let g:terminal_color_7  = s:punct[0]
let g:terminal_color_8  = s:comment[0]
let g:terminal_color_9  = s:orange[0]
let g:terminal_color_10 = s:green[0]
let g:terminal_color_11 = s:yellow[0]
let g:terminal_color_12 = s:blue[0]
let g:terminal_color_13 = s:magenta[0]
let g:terminal_color_14 = s:cyan[0]
let g:terminal_color_15 = s:fg[0]

let g:terminal_ansi_colors = [
  \ s:bg_sel[0],  s:red[0],     s:green[0],   s:yellow[0],
  \ s:blue[0],    s:magenta[0], s:cyan[0],    s:punct[0],
  \ s:comment[0], s:orange[0],  s:green[0],   s:yellow[0],
  \ s:blue[0],    s:magenta[0], s:cyan[0],    s:fg[0]
  \ ]

" Helper function
function! s:hi(group, fg, bg, style, ...)
  let l:cmd = "hi " . a:group

  if type(a:fg) == v:t_list
    let l:cmd .= " guifg=" . a:fg[0] . " ctermfg=" . a:fg[1]
  elseif a:fg != ""
    let l:cmd .= " guifg=" . a:fg . " ctermfg=none"
  else
    let l:cmd .= " guifg=none ctermfg=none"
  endif

  if type(a:bg) == v:t_list
    let l:cmd .= " guibg=" . a:bg[0] . " ctermbg=" . a:bg[1]
  elseif a:bg != ""
    let l:cmd .= " guibg=" . a:bg . " ctermbg=none"
  else
    let l:cmd .= " guibg=none ctermbg=none"
  endif

  let l:cmd .= a:style != "" ? " gui=" . a:style . " cterm=" . a:style : " gui=none cterm=none"
  if a:0 >= 1
    if type(a:1) == v:t_list
      let l:cmd .= " guisp=" . a:1[0]
    elseif a:1 != ""
      let l:cmd .= " guisp=" . a:1
    endif
  endif

  execute l:cmd
endfunction

" Editor chrome
call s:hi("Normal",          s:fg,        s:bg,      "")
call s:hi("NormalNC",        s:fg,        s:bg,      "")
call s:hi("NormalFloat",     s:fg,        s:bg_sel,  "")

call s:hi("CursorLine",      "",          s:bg_sel,  "")
call s:hi("CursorLineNr",    s:yellow,    s:bg_sel,  "")
call s:hi("CursorColumn",    "",          s:bg_sel,  "")

call s:hi("LineNr",          s:comment,   "",        "")
call s:hi("SignColumn",      s:comment,   s:bg,      "")
call s:hi("ColorColumn",     "",          s:bg_sel,  "")

call s:hi("Visual",          s:fg,        s:comment, "")
call s:hi("VisualNOS",       s:fg,        s:comment, "")

call s:hi("StatusLine",      s:punct,     s:bg_sel,  "")
call s:hi("StatusLineNC",    s:comment,   s:bg_sel,  "")
call s:hi("WinSeparator",    s:bg_sel,    "",        "")
call s:hi("VertSplit",       s:bg_sel,    "",        "")

call s:hi("TabLine",         s:comment,   s:bg_sel,  "")
call s:hi("TabLineSel",      s:fg,        s:bg,      "")
call s:hi("TabLineFill",     "",          s:bg_sel,  "")

call s:hi("Pmenu",           s:fg,        s:bg_sel,  "")
call s:hi("PmenuSel",        s:bg,        s:green,   "")
call s:hi("PmenuSbar",       "",          s:bg_sel,  "")
call s:hi("PmenuThumb",      "",          s:comment, "")

call s:hi("Search",          s:bg,        s:yellow,  "")
call s:hi("IncSearch",       s:bg,        s:cyan,    "")
call s:hi("CurSearch",       s:bg,        s:cyan,    "")

call s:hi("MatchParen",      s:cyan,      "",        "bold")
call s:hi("Folded",          s:comment,   s:bg_sel,  "italic")
call s:hi("FoldColumn",      s:comment,   s:bg,      "")

call s:hi("NonText",         s:bg_sel,    "",        "")
call s:hi("Whitespace",      s:bg_sel,    "",        "")
call s:hi("SpecialKey",      s:comment,   "",        "")
call s:hi("EndOfBuffer",     s:bg_sel,    "",        "")

call s:hi("Title",           s:green,     "",        "bold")
call s:hi("Directory",       s:blue,      "",        "")

call s:hi("Question",        s:green,     "",        "")
call s:hi("MoreMsg",         s:green,     "",        "")
call s:hi("ModeMsg",         s:fg,        "",        "bold")
call s:hi("ErrorMsg",        s:red,       "",        "")
call s:hi("WarningMsg",      s:yellow,    "",        "")
call s:hi("WildMenu",        s:bg,        s:cyan,    "")
call s:hi("QuickFixLine",    "",          s:bg_sel,  "bold")
call s:hi("Conceal",         s:comment,   "",        "")

call s:hi("Cursor",          s:bg,        s:fg,      "")
call s:hi("lCursor",         s:bg,        s:fg,      "")

call s:hi("DiffAdd",         s:bg,        s:green,   "")
call s:hi("DiffChange",      s:bg,        s:yellow,  "")
call s:hi("DiffDelete",      s:bg,        s:red,     "")
call s:hi("DiffText",        s:bg,        s:blue,    "bold")

call s:hi("SpellBad",        "", "", "undercurl", s:red)
call s:hi("SpellCap",        "", "", "undercurl", s:blue)
call s:hi("SpellRare",       "", "", "undercurl", s:magenta)
call s:hi("SpellLocal",      "", "", "undercurl", s:yellow)

call s:hi("DiagnosticError",          s:red,     "",  "")
call s:hi("DiagnosticWarn",           s:yellow,  "",  "")
call s:hi("DiagnosticInfo",           s:blue,    "",  "")
call s:hi("DiagnosticHint",           s:comment, "",  "")
call s:hi("DiagnosticUnderlineError", "",        "",  "undercurl", s:red)
call s:hi("DiagnosticUnderlineWarn",  "",        "",  "undercurl", s:yellow)
call s:hi("DiagnosticUnderlineInfo",  "",        "",  "undercurl", s:blue)
call s:hi("DiagnosticUnderlineHint",  "",        "",  "undercurl", s:comment)

" Syntax — classic groups
call s:hi("Comment",        s:comment,   "",  "italic")

call s:hi("Constant",       s:magenta,   "",  "")
call s:hi("String",         s:yellow,    "",  "")
call s:hi("Character",      s:yellow,    "",  "")
call s:hi("Number",         s:red,       "",  "")
call s:hi("Float",          s:red,       "",  "")
call s:hi("Boolean",        s:magenta,   "",  "")

call s:hi("Identifier",     s:fg,        "",  "")
call s:hi("Function",       s:green,     "",  "")
call s:hi("Namespace",      s:namespace, "",  "")

call s:hi("Statement",      s:blue,      "",  "")
call s:hi("Keyword",        s:blue,      "",  "")
call s:hi("Conditional",    s:blue,      "",  "")
call s:hi("Repeat",         s:blue,      "",  "")
call s:hi("Label",          s:blue,      "",  "")
call s:hi("Operator",       s:cyan,      "",  "")
call s:hi("Exception",      s:blue,      "",  "")

call s:hi("PreProc",        s:magenta,   "",  "")
call s:hi("Include",        s:blue,      "",  "")
call s:hi("Define",         s:magenta,   "",  "")
call s:hi("Macro",          s:magenta,   "",  "")
call s:hi("PreCondit",      s:magenta,   "",  "")

call s:hi("Type",           s:orange,    "",  "")
call s:hi("StorageClass",   s:blue,      "",  "")
call s:hi("Structure",      s:blue,      "",  "")
call s:hi("Typedef",        s:orange,    "",  "")

call s:hi("Special",        s:cyan,      "",  "")
call s:hi("SpecialChar",    s:orange,    "",  "")
call s:hi("Tag",            s:green,     "",  "")
call s:hi("Delimiter",      s:punct,     "",  "")
call s:hi("SpecialComment", s:comment,   "",  "bold")
call s:hi("Debug",          s:red,       "",  "")

call s:hi("Underlined",     s:blue,      "",  "underline")
call s:hi("Italic",         "",          "",  "italic")
call s:hi("Bold",           "",          "",  "bold")
call s:hi("Ignore",         s:comment,   "",  "")
call s:hi("Error",          s:red,       "",  "")
call s:hi("Todo",           s:yellow,    "",  "bold")

" Treesitter
hi! link @comment               Comment
hi! link @comment.documentation Comment

hi! link @keyword               Keyword
hi! link @keyword.function      Keyword
hi! link @keyword.operator      Operator
hi! link @keyword.return        Keyword
hi! link @keyword.import        Keyword
hi! link @keyword.type          Keyword
hi! link @keyword.modifier      Keyword
hi! link @keyword.repeat        Repeat
hi! link @keyword.conditional   Conditional
hi! link @keyword.exception     Exception

hi! link @function              Function
hi! link @function.call         Function
hi! link @function.builtin      Function
hi! link @function.method       Function
hi! link @function.method.call  Function
hi! link @function.macro        Macro

hi! link @type                  Type
hi! link @type.builtin          Type
hi! link @type.definition       Type

hi! link @variable              Identifier
hi! link @variable.builtin      Keyword
hi! link @variable.parameter    Identifier
hi! link @variable.member       Identifier

hi! link @string                String
hi! link @string.escape         SpecialChar
hi! link @string.special        SpecialChar

hi! link @number                Number
hi! link @number.float          Float
hi! link @boolean               Boolean

hi! link @operator              Operator
hi! link @punctuation           Delimiter
hi! link @punctuation.bracket   Delimiter
hi! link @punctuation.delimiter Delimiter

hi! link @constant              Constant
hi! link @constant.builtin      Constant
hi! link @constant.macro        Macro

hi! link @attribute             PreProc
hi! link @attribute.builtin     PreProc
hi! link @label                 Label

hi! link @namespace         Namespace
hi! link @namespace.builtin Namespace
hi! link @module            Namespace
hi! link @module.builtin    Namespace

hi! link @tag                   Tag
hi! link @tag.attribute         Identifier
hi! link @tag.delimiter         Delimiter

hi! link @markup.heading        Title
hi! link @markup.link           Underlined
hi! link @markup.italic         Italic
hi! link @markup.bold           Bold
hi! link @markup.raw            String

" LSP semantic tokens
hi! link @lsp.type.function     Function
hi! link @lsp.type.method       Function
hi! link @lsp.type.keyword      Keyword
hi! link @lsp.type.type         Type
hi! link @lsp.type.class        Type
hi! link @lsp.type.interface    Type
hi! link @lsp.type.struct       Type
hi! link @lsp.type.enum         Type
hi! link @lsp.type.enumMember   Constant
hi! link @lsp.type.parameter    Identifier
hi! link @lsp.type.variable     Identifier
hi! link @lsp.type.property     Identifier
hi! link @lsp.type.namespace    Namespace
hi! link @lsp.type.macro        Macro
hi! link @lsp.type.string       String
hi! link @lsp.type.number       Number
hi! link @lsp.type.operator     Operator
hi! link @lsp.mod.deprecated    Comment
