
set background=dark
set nowrap
set number
set laststatus=0
set shortmess+=F

set listchars=tab:\|\ 
"set list
set noequalalways

set fillchars+=vert:\ 
set fillchars+=eob:\ 

set showtabline=0
 
highlight clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "allansm"

hi Normal cterm=italic ctermfg=white
hi Comment cterm=italic ctermfg=darkgray

"values
hi Constant cterm=italic ctermfg=green

"$name
hi Identifier cterm=NONE ctermfg=red  

"functionName
hi Function cterm=bold ctermfg=red  	

"if else
hi Conditional ctermfg=green cterm=bold

"from import
hi Include ctermfg=green cterm=italic

"in and or
hi Operator ctermfg=green
hi Label ctermfg=red

"for return
hi Statement cterm=NONE ctermfg=green

"function
hi PreProc cterm=bold ctermfg=red

"class private public int float etc
hi Type cterm=NONE ctermfg=green 

"\n
hi Special cterm=NONE ctermfg=green

"() {}
hi Delimiter cterm=NONE ctermfg=green

hi Underlined ctermfg=green
hi Error ctermfg=black ctermbg=red
hi ErrorMsg ctermfg=black ctermbg=red
hi Search ctermfg=black ctermbg=green
hi Visual ctermfg=black ctermbg=green

hi Pmenu cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi StatusLineNC cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi VertSplit cterm=NONE ctermbg=NONE ctermfg=green gui=NONE guifg=#ffffff
hi ColorColumn cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi OverLength cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi StatusLine cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff

:highlight NonText ctermfg=NONE
":hi EndOfBuffer guifg=bg
