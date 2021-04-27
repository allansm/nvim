function! functionnames#GetAllFunctionNames(findstart, base)
	if has("win64") || has("win32") || has("win16")
		let nvim = '%userprofile%/appdata/local/nvim'
	else
		let nvim = '~/.config/nvim'
	endif
	
	let vimp = nvim.'/python/functionNames/getAllFunctionNames.py'
	let p = getcwd()
	let co = 'python '.vimp.' "'.p.'"'
	let result = system(co)

	return split(result,'?')
endfun
