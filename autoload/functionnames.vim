function! functionnames#GetAllFunctionNames(findstart, base)
	if has("win64") || has("win32") || has("win16")
		let nvim = '%userprofile%/appdata/local/nvim'
	else
		let nvim = '~/.config/nvim'
	endif
	
	let vimp = nvim.'/python/functionNames/getAllFunctionNames.py'
	let vimp2 = nvim.'/python/varNames/varNames.py'
	
	let line=getline(".")

	if line == ''
		let line = '@'
	endif	

	let co = 'python '.vimp.' . '.line
	let co2 = 'python '.vimp2.' . '.line
	let result = system(co)
	let result2 = system(co2)
	
	if result2 != ''
		let result = result.' '.result2

	let result = split(result)
	
	return result
endfun
