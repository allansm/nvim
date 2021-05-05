function! functionnames#GetAllFunctionNames(findstart, base)
	if has("win64") || has("win32") || has("win16")
		let nvim = '%userprofile%/appdata/local/nvim'
	else
		let nvim = '~/.config/nvim'
	endif
	
	let vimp = nvim.'/python/functionNames/getAllFunctionNames.py'
	
	let line=getline(".")
	
	if line == ''
		let line = '@'
	endif

	":execute '%s/'.line.'//g'


	let co = 'python '.vimp.' . '.line
	let result = system(co)
	
	"let res = []
	"call add(res,' ')
	"call add(res,' ')

	"for m in split(result)
	"	call add(res,m)
		"echo m
	"endfor

	return split(result)
endfun
