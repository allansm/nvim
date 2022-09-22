
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

let colors_name = "allan"

hi Normal cterm=italic ctermfg=green ctermbg=black
hi Comment cterm=italic ctermfg=gray

"values
hi Constant cterm=italic ctermfg=white

"$name
hi Identifier cterm=NONE ctermfg=white  

"functionName
hi Function ctermfg=white  	

"if else
hi Conditional ctermfg=darkgreen

"from import
hi Include ctermfg=darkgreen cterm=italic

"in and or
hi Operator ctermfg=darkgreen
"hi Label ctermfg=red

"for return
hi Statement cterm=NONE ctermfg=darkgreen

"function
hi PreProc cterm=NONE ctermfg=white	

"class private public int float etc
hi Type cterm=NONE ctermfg=darkgreen 

"\n
hi Special cterm=NONE ctermfg=darkgreen

"() {}
hi Delimiter cterm=NONE ctermfg=darkgreen

hi Underlined ctermfg=darkgreen
hi Error ctermfg=black ctermbg=red
hi Search ctermfg=black ctermbg=darkgreen

hi Pmenu cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi StatusLineNC cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi VertSplit cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi ColorColumn cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi OverLength cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi StatusLine cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff

:highlight NonText ctermfg=NONE
":hi EndOfBuffer guifg=bg
