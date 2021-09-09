:colorscheme allan
:set splitright
:set splitbelow
:set noai nocin nosi inde= 
:set nopaste

function! Nvim()
	if has("win64") || has("win32") || has("win16")
		let nvim = '%userprofile%/appdata/local/nvim'
	else
		let nvim = '~/.config/nvim'
	endif

	return nvim
endfunction

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

function! s:Shh(command)
	:exe system(a:command)
endfunction

function! s:Mem()
	let vimp = Nvim().'\php\memorize\memorize.php'	
	:exe system('php '.vimp.' '. getline("."))
	echo 'memorized : '. getline(".")
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
	:execute 'normal i ' . substitute(a:fname,"\\","/","gm")	
endfunction

function! s:Gt()
	let vimp = Nvim().'/python/GetterAndSetter/'
	let ext = ''.expand('%:e')

	if ext == 'php'
		let vimp = vimp.'phpGetterAndSetter.py'
	elseif ext == 'java'
		let vimp = vimp.'javaGetterAndSetter.py'
	else
		let vimp = ''
	endif
	
	if vimp != ''
		let co = 'python '.vimp.' g "'.getline('.').'"'
		let exe = 'normal Gi '.system(co)

		:execute exe
	endif
	
endfunction

function! s:St()
	let vimp = Nvim().'/python/GetterAndSetter/'
	let ext = ''.expand('%:e')

	if ext == 'php'
		let vimp = vimp.'phpGetterAndSetter.py'
	elseif ext == 'java'
		let vimp = vimp.'javaGetterAndSetter.py'
	else
		let vimp = ''
	endif
	
	if vimp != ''
		let co = 'python '.vimp.' s "'.getline('.').'"'
		let exe = 'normal Gi '.system(co)

		:execute exe
	endif
	
endfunction

function! s:Gs()
	let vimp = Nvim().'/python/GetterAndSetter/'
	let ext = ''.expand('%:e')

	if ext == 'php'
		let vimp = vimp.'phpGetterAndSetter.py'
	elseif ext == 'java'
		let vimp = vimp.'javaGetterAndSetter.py'
	else
		let vimp = ''
	endif
	
	if vimp != ''
		let co = 'python '.vimp.' gs "'.getline('.').'"'
		let exe = 'normal Gi '.system(co)

		:execute exe
	endif
	
endfunction

function! s:Fs()
	:tabe %
endfunction

function! s:Init()
	let init = system('echo '.Nvim().'/init.vim')
	:execute 'e '.init
endfunction

function! s:Test()
	let ext = ''.expand('%:e')
	let co = 'python '.Nvim().'/python/test/test.py '.ext
	let result = system(co)
	let result = split(result)
	for n in result
		:execute 'setlocal dictionary+='.n
	endfor
endfunction

command! -nargs=1 -complete=file Exec call s:Exec(<f-args>)

command! -nargs=0 Vp call s:Vp()
command! -nargs=0 Hp call s:Hp()

command! -nargs=0 Vl call s:Vl()
command! -nargs=0 Hl call s:Hl()

command! -nargs=1 Vs call s:Vs(<f-args>)
command! -nargs=1 Hs call s:Hs(<f-args>)


command! -nargs=1 -complete=file Sh call s:Sh(<f-args>)
command! -nargs=1 -complete=file Shh call s:Shh(<f-args>)

command! -nargs=0 Mem call s:Mem()

command! -nargs=0 Ac call s:Ac()

command! -nargs=1 -complete=file Fn call s:Fn(<f-args>)

command! -nargs=1 -complete=file I call s:I(<f-args>)

command! -nargs=0 Gt call s:Gt()
command! -nargs=0 St call s:St()
command! -nargs=0 Gs call s:Gs()

command! -nargs=0 Fs call s:Fs()

command! -nargs=0 Init call s:Init()

command! -nargs=0 Test call s:Test()

"Test

cnoreabbrev init Init
cnoreabbrev hs Hs
cnoreabbrev vs Vs
cnoreabbrev shh Shh
cnoreabbrev gs Gs

filetype plugin on
set omnifunc=memorized#AutoComplete

set completefunc=functionnames#GetAllFunctionNames
setlocal complete+=k
