function! functionnames#GetAllFunctionNames(findstart, base)
	if has("win64") || has("win32") || has("win16")
		let nvim = '%userprofile%/appdata/local/nvim'
	else
		let nvim = '~/.config/nvim'
	endif
	
	let vimp = nvim.'/python/functionNames/getAllFunctionNames.py'
	
	let co = 'python '.vimp.' .'
	let result = system(co)
	
	let res = []
	call add(res,' ')

	for m in split(result)
		call add(res,m)
	endfor

	return res
endfun
