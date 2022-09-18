
set background=dark
set nowrap
"set number
set laststatus=0
set shortmess+=F

set listchars=tab:\|\ 
"set list
set noequalalways

highlight clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "allan2"

hi Normal cterm=italic ctermfg=green ctermbg=black
hi Comment    cterm=italic ctermfg=gray

"values
hi Constant   cterm=italic ctermfg=darkgreen   	

"$name
hi Identifier cterm=NONE ctermfg=green   

"functionName
hi Function   ctermfg=green   	

"if else
hi Conditional ctermfg=darkgreen

"from import
hi Include ctermfg=darkgreen cterm=italic

"in and or
hi Operator ctermfg=darkgreen
"hi Label ctermfg=red

"for return
hi Statement  cterm=NONE ctermfg=darkgreen

"function
hi PreProc    cterm=NONE ctermfg=green 	

"class private public int float etc
hi Type	      cterm=NONE ctermfg=darkgreen 

"\n
hi Special    cterm=NONE ctermfg=darkgreen

"() {}
hi Delimiter  cterm=NONE ctermfg=darkgreen

hi Underlined ctermfg=green
hi Error ctermfg=black ctermbg=red
hi Search ctermfg=black ctermbg=green

hi Pmenu cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi StatusLineNC cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi VertSplit cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi ColorColumn cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi OverLength cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi StatusLine cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff


:highlight NonText ctermfg=NONE
":hi EndOfBuffer guifg=bg
