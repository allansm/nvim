set background=dark
set nowrap
set number
set laststatus=0
:set shortmess+=F

highlight clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "allan"

hi Normal ctermfg=46


hi Comment    cterm=italic ctermfg=124  gui=italic guifg=#dddddd   	 
hi Constant   cterm=NONE ctermfg=157   	gui=NONE guifg=#ffffff   	
hi Identifier cterm=NONE ctermfg=35   	gui=NONE guifg=#ffffff   

"hi Function   cterm=italic ctermfg=46   gui=NONE guifg=#ffffff   	

hi Statement  cterm=NONE ctermfg=34	    gui=bold guifg=#ffffff	     	
hi PreProc    cterm=NONE ctermfg=214		gui=NONE guifg=#ffffff 	
hi Type	      cterm=NONE ctermfg=226		gui=bold guifg=#ffffff 		

"hi Special    cterm=NONE ctermfg=48    	gui=NONE guifg=#ffffff

hi SpecialChar    cterm=NONE ctermfg=214    	gui=NONE guifg=#ffffff
hi Tag    cterm=NONE ctermfg=48    	gui=NONE guifg=#ffffff    	
hi Delimiter  cterm=NONE ctermfg=124   	gui=NONE guifg=#ffffff
 
"hi Parameter  cterm=NONE ctermfg=46		gui=NONE guifg=#ffffff 

hi Pmenu cterm=NONE ctermbg=NONE ctermfg=46 gui=NONE guifg=#ffffff
hi StatusLineNC cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi VertSplit cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi ColorColumn cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi OverLength cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
hi StatusLine cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guifg=#ffffff
 
