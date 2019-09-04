set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="cottonmouse"

if ( &t_Co >= 255 || $TERM =~? "256color" )
  hi Normal         term=none cterm=none ctermfg=245  ctermbg=233
  hi Boolean        term=none cterm=none ctermfg=12  ctermbg=none
  hi Character      term=none cterm=none ctermfg=2   ctermbg=none
  hi Comment        term=none cterm=none ctermfg=238  ctermbg=233
  hi Conditional    term=none cterm=none ctermfg=5  ctermbg=none
  hi Constant       term=none cterm=none ctermfg=2   ctermbg=none
  hi Cursor         term=none cterm=none ctermfg=none ctermbg=5
  hi CursorLine     term=none cterm=none ctermfg=none ctermbg=234
  hi CursorLineNr   term=none cterm=none ctermfg=245  ctermbg=233
  hi CursorColumn   term=none cterm=none ctermfg=none ctermbg=233
  hi Debug          term=none cterm=none ctermfg=5  ctermbg=none
  hi Define         term=none cterm=none ctermfg=5  ctermbg=none
  hi Delimiter      term=none cterm=none ctermfg=6   ctermbg=none
  hi DiffAdd        term=none cterm=none ctermfg=6   ctermbg=233
  hi DiffChange     term=none cterm=none              ctermbg=233
  hi DiffDelete     term=none cterm=none ctermfg=238  ctermbg=233
  hi DiffText       term=none cterm=none ctermfg=96   ctermbg=233
  hi Directory      term=none cterm=none ctermfg=65   ctermbg=none
  hi ErrorMsg       term=none cterm=none ctermfg=1   ctermbg=none
  hi Error          term=none cterm=none ctermfg=108  ctermbg=233
  hi Exception      term=none cterm=none ctermfg=1   ctermbg=none
  hi Float          term=none cterm=none ctermfg=245  ctermbg=none
  hi FoldColumn     term=none cterm=none ctermfg=2   ctermbg=233
  hi Folded         term=none cterm=none ctermfg=2   ctermbg=233
  hi Function       term=none cterm=none ctermfg=12  ctermbg=none
  hi Identifier     term=none cterm=none ctermfg=2  ctermbg=none
  hi IncSearch      term=none cterm=none ctermfg=238  ctermbg=4
  hi Keyword        term=none cterm=none ctermfg=5   ctermbg=none
  hi Label          term=none cterm=none ctermfg=101  ctermbg=none
  hi LineNr         term=none cterm=none ctermfg=238  ctermbg=233
  hi MatchParen     term=none cterm=none ctermfg=233  ctermbg=5
  hi Macro          term=none cterm=none ctermfg=5  ctermbg=none
  hi ModeMsg        term=none cterm=none ctermfg=12  ctermbg=none
  hi MoreMsg        term=none cterm=none ctermfg=2   ctermbg=none
  hi NonText        term=none cterm=none ctermfg=238  ctermbg=233
  hi Number         term=none cterm=none ctermfg=4  ctermbg=none
  hi Operator       term=none cterm=none ctermfg=12  ctermbg=none
  hi PreCondit      term=none cterm=none ctermfg=180  ctermbg=none
  hi PreProc        term=none cterm=none ctermfg=245  ctermbg=none
  hi Question       term=none cterm=none ctermfg=4  ctermbg=none
  hi Repeat         term=none cterm=none ctermfg=5  ctermbg=none
  hi Search         term=none cterm=none ctermfg=4  ctermbg=none
  hi SpecialChar    term=none cterm=none ctermfg=108  ctermbg=none
  hi SpecialComment term=none cterm=none ctermfg=108  ctermbg=none
  hi Special        term=none cterm=none ctermfg=5  ctermbg=none
  hi SpecialKey     term=none cterm=none ctermfg=108  ctermbg=none
  hi Statement      term=none cterm=none ctermfg=3  ctermbg=none
  hi StatusLine     term=none cterm=none ctermfg=245  ctermbg=238
  hi StatusLineNC   term=none cterm=none ctermfg=239  ctermbg=233
  hi StorageClass   term=none cterm=none ctermfg=245  ctermbg=none
  hi String         term=none cterm=none ctermfg=5  ctermbg=none
  hi Structure      term=none cterm=none ctermfg=101  ctermbg=none
  hi TabLine        term=none cterm=none ctermfg=238  ctermbg=233
  hi TabLineFill    term=none cterm=none ctermfg=238  ctermbg=233
  hi TabLineSel     term=none cterm=none ctermfg=245  ctermbg=233
  hi Tag            term=none cterm=none ctermfg=108  ctermbg=none
  hi Title          term=none cterm=none ctermfg=4  ctermbg=none
  hi Todo           term=none cterm=none ctermfg=2   ctermbg=233
  hi Typedef        term=none cterm=none ctermfg=245  ctermbg=none
  hi Type           term=none cterm=none ctermfg=2   ctermbg=none
  hi Underlined     term=none cterm=none ctermfg=245  ctermbg=none
  hi VertSplit      term=none cterm=none ctermfg=2   ctermbg=233
  hi VisualNOS      term=none cterm=none ctermfg=4   ctermbg=none
  hi WarningMsg     term=none cterm=none ctermfg=4   ctermbg=none
  hi WildMenu       term=none cterm=none ctermfg=2   ctermbg=none
endif
