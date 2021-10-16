:colorscheme allan
:set splitright
:set splitbelow
:set noai nocin nosi inde= 
:set nopaste

let g:dict = ""

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
	let fn = bufname()
	let vimp = Nvim().'/python/GetterAndSetter/getterAndSetter.py'
	let co = 'python '.vimp.' '.fn
	let exe = 'normal Gi '.system(co)

	:execute exe
endfunction

function! s:Fs()
	:tabe %
endfunction

function! s:Init()
	let init = system('echo '.Nvim().'/init.vim')
	:execute 'e '.init
endfunction

function! s:ToInit()
	let init = system('echo '.Nvim())
	:execute 'cd '.init
endfunction

function! s:AutoComplete()
	let ext = ''.expand('%:e')
	let co = 'python '.Nvim().'/python/autocomplete/autocomplete.py --ext "'.ext.'"'
	let result = system(co)
	let g:dict = g:dict.result
	let result = split(result)
	for n in result
		:execute 'setlocal dictionary+='.n
	endfor
	setlocal complete+=k
endfunction

function! s:FullAutoComplete()
	let ext = ''.expand('%:e')
	let co = 'python '.Nvim().'/python/autocomplete/autocomplete.py --ext "'.ext.'" --noexit'
	let result = system(co)
	let g:dict = g:dict.result
	let result = split(result)	
	for n in result
		:execute 'setlocal dictionary+='.n
	endfor
	setlocal complete+=k 
endfunction

function! s:UseDict()
	let ext = '.'.expand('%:e')
	let result = split(g:dict)
	for n in result
		if(stridx(n,ext) != -1)
			:execute 'setlocal dictionary+='.n
		endif
	endfor
	setlocal complete+=k
endfunction

function! s:RefreshInit()
	let init = Nvim().'/init.vim'
	let path = system('echo '.init)
	let co = 'source '.path
	:silent! execute co
endfunction

function! s:GetDict()	
	let co = 'python '.Nvim().'/python/autocomplete/getAll.py'
	let result = system(co)
	let g:dict = g:dict.result	
endfunction

function! s:GetFullDict()	
	let co = 'python '.Nvim().'/python/autocomplete/getAll.py --noexit'
	let result = system(co)
	let g:dict = g:dict.result	
endfunction


function! s:AutoCompleteNew(fname)
	:execute 'new '. a:fname
	let ffn = system('echo '.expand('%:p'))
	
	let flag = 1
	let result = split(g:dict)
	for n in result
		if(stridx(ffn,n) != -1)
			let flag = 0
		endif
	endfor

	if(flag == 1)
		let g:dict = g:dict.ffn
	endif

	UseDict
endfunction

function! s:AutoCompleteVNew(fname)
	:execute 'vnew '. a:fname
	let ffn = system('echo '.expand('%:p'))

	let flag = 1
	let result = split(g:dict)
	for n in result
		if(stridx(ffn,n) != -1)
			let flag = 0	
		endif
	endfor

	if(flag == 1)
		let g:dict = g:dict.ffn
	endif

	UseDict
endfunction

function! s:AutoCompleteModify(fname)
	:execute 'e '. a:fname
	let ffn = system('echo '.expand('%:p'))

	let flag = 1
	let result = split(g:dict)
	for n in result
		if(stridx(ffn,n) != -1)
			let flag = 0	
		endif
	endfor

	if(flag == 1)
		let g:dict = g:dict.ffn
	endif

	UseDict
endfunction

function! s:Preference()
	:vnew
	:terminal
	:new
	:terminal
	:Hs+8
	:Vs-28
	:new
	:terminal
	:vnew
	:Hs-8
	:terminal
	:wincmd w
	:new
	:terminal
	:Hs-11
	:wincmd w
	:wincmd w
	:wincmd w
	:wincmd w
	:wincmd w
endfunction

function! s:CloseAll()
	:bufdo bwipeout!
endfunction

function! s:AddPackage()
	let ext = ''.expand('%:e')
	let co = 'python '.Nvim().'/python/package/addPackage.py '.ext.' "'.getline('.').'"'
	let result = system(co)
endfunction

function! s:Packages()
	let ext = ''.expand('%:e')
	let path = system('echo '.Nvim().'/python/package/'.ext.'.config')
	:execute 'e '.path
endfunction

command! -nargs=1 -complete=file Exec call s:Exec(<f-args>)

command! -nargs=1 Vs call s:Vs(<f-args>)
command! -nargs=1 Hs call s:Hs(<f-args>)


command! -nargs=1 -complete=file Sh call s:Sh(<f-args>)
command! -nargs=1 -complete=file Shh call s:Shh(<f-args>)

command! -nargs=0 Mem call s:Mem()

command! -nargs=1 -complete=file I call s:I(<f-args>)

command! -nargs=0 Gt call s:Gt()
command! -nargs=0 St call s:St()
command! -nargs=0 Gs call s:Gs()

command! -nargs=0 Fs call s:Fs()

command! -nargs=0 Init call s:Init()
command! -nargs=0 ToInit call s:ToInit()

command! -nargs=0 AutoComplete call s:AutoComplete()
command! -nargs=0 FullAutoComplete call s:FullAutoComplete()
command! -nargs=0 GetDict call s:GetDict()
command! -nargs=0 GetFullDict call s:GetFullDict()

command! -nargs=0 RefreshInit call s:RefreshInit()

command! -nargs=0 UseDict call s:UseDict()

command! -nargs=1 -complete=file AutoCompleteNew call s:AutoCompleteNew(<f-args>)
command! -nargs=1 -complete=file AutoCompleteVNew call s:AutoCompleteVNew(<f-args>)
command! -nargs=1 -complete=file AutoCompleteModify call s:AutoCompleteModify(<f-args>)

command! -nargs=0 Preference call s:Preference()
command! -nargs=0 CloseAll call s:CloseAll()

command! -nargs=0 AddPackage call s:AddPackage()
command! -nargs=0 Packages call s:Packages()
"command! -nargs=0 Test call s:Test()

:silent! UseDict

cnoreabbrev init Init
cnoreabbrev toinit ToInit

cnoreabbrev hs Hs
cnoreabbrev vs Vs

cnoreabbrev shh Shh

cnoreabbrev gs Gs
cnoreabbrev ac AutoComplete
cnoreabbrev fac FullAutoComplete
cnoreabbrev fd GetFullDict

cnoreabbrev refresh RefreshInit

cnoreabbrev na AutoCompleteNew
cnoreabbrev vna AutoCompleteVNew
cnoreabbrev ma AutoCompleteModify

cnoreabbrev pref Preference

filetype plugin on

set completefunc=functionnames#GetAllFunctionNames
setlocal complete+=k

:imap <C-a> <esc>:set omnifunc=memorized#AutoComplete<CR><insert><C-X><C-O>
:imap <C-p> <esc>:set omnifunc=package#Package<CR><insert><C-X><C-O>
:imap <C-g><C-u> <esc>:GetDict<CR>:UseDict<CR><insert><C-N>
:imap <C-u> <esc>:UseDict<CR><insert><C-N>
:imap <C-d> <esc>:set omnifunc=common#ShowDict<CR><insert><C-X><C-O>
