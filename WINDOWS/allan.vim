set background=dark
set nowrap
set number

highlight clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "allan"

hi Normal ctermfg=46 ctermbg=Black guifg=#dddddd	guibg=#ffffff


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
