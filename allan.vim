" Vim color file
" Maintainer:	Shian Lee 
" Last Change:	2014 Mar 6 (for vim 7.4)
" Remark:	"industry" stands for 'industrial' color scheme. In industrial
"		HMI (Human-Machine-Interface) programming, using a standard color
"               scheme is mandatory in many cases (in traffic-lights for example): 
"               LIGHT_RED is	    'Warning' 
"               LIGHT_YELLOW is	    'Attention' 
"               LIGHT_GREEN is	    'Normal' 
"               LIGHT_MAGENTA is    'Warning-Attention' (light RED-YELLOW)
"               LIGHT_CYAN is	    'Attention-Normal'  (light YELLOW-GREEN).
"               BLACK is	    Dark-High-Contrast Background for maximum safety.
"               BLUE is		    Shade of BLACK (not supposed to get attention).
"
"               Industrial color scheme is by nature clear, safe and productive. 
"               Yet, depends on the file type's syntax, it might appear incorrect. 

" Reset to dark background, then reset everything to defaults:
set background=dark
set nowrap
set number

highlight clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "allan"

" First set Normal to regular white on black text colors:
hi Normal ctermfg=46 ctermbg=Black guifg=#dddddd	guibg=#ffffff

" Syntax highlighting (other color-groups using default, see :help group-name):

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

