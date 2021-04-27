:colorscheme allan
:set splitright
:set splitbelow

function! s:Exec(command)
    :exe ":normal i" . system(a:command)
endfunction

function! s:Vp()
    :vertical resize +10
endfunction

function! s:Hp()
    :res +10
endfunction

function! s:Vl()
    :vertical resize -10
endfunction

function! s:Hl()
    :res -10
endfunction

function! s:Vs(size)
	:execute 'vertical resize '. a:size
endfunction

function! s:Hs(size)
	:execute 'res ' . a:size
endfunction

function! s:Sh(command)
	:execute 'new term://' . a:command	
endfunction


function! s:Mem()
	let vimp = stdpath("config").'\php\memorize\memorize.php'
	let command='new term://php '.vimp.' '. getline(".")
	echo command
	:execute command
endfunction

function! s:Ac()
	let vimp = stdpath("config").'\php\memorize\autoComplete.php'
	let line=getline(".")
	:execute 's/'.line.'//g'
	:execute 'Exec php '.vimp.' '.line 
endfunction

function! s:Fn(fname)
	let vimp = stdpath("config").'\python\functionNames\functionNames.py'
	:execute 'Sh python '.vimp.' ' . a:fname 
endfunction

function! s:I(fname)
	:execute 'Exec echo ' . a:fname	
endfunction

"function! Test()
"	let vimp = stdpath("config").'\php\memorize\autoComplete.php'
"	let line=getline(".")

"	let result = system('php '.vimp.' '.line)
"	return result
"endfunction

command! -nargs=1 -complete=file Exec call s:Exec(<f-args>)

command! -nargs=0 Vp call s:Vp()
command! -nargs=0 Hp call s:Hp()

command! -nargs=0 Vl call s:Vl()
command! -nargs=0 Hl call s:Hl()

command! -nargs=1 Vs call s:Vs(<f-args>)
command! -nargs=1 Hs call s:Hs(<f-args>)


command! -nargs=1 -complete=file Sh call s:Sh(<f-args>)

command! -nargs=0 Mem call s:Mem()

command! -nargs=0 Ac call s:Ac()

command! -nargs=1 -complete=file Fn call s:Fn(<f-args>)

command! -nargs=1 -complete=file I call s:I(<f-args>)

"command! -nargs=0 -complete=file Test call s:Test()

filetype plugin on
set omnifunc=memorized#AutoComplete

set completefunc=functionnames#GetAllFunctionNames 