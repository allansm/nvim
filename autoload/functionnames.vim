function! functionnames#GetAllFunctionNames(findstart, base)
	if has("win64") || has("win32") || has("win16")
		let nvim = '%userprofile%/appdata/local/nvim'
	else
		let nvim = '~/.config/nvim'
	endif
	
	let vimp = nvim.'/python/functionNames/getAllFunctionNames.py'
	let vimp2 = nvim.'/python/varNames/varNames.py'
	
	let line = getline(".")
	
	if line != ''
		let line = split(line,' ')[-1]
	endif

	if trim(line) == ''
		let line = '@'
	endif

	let ext = ''.expand('%:e')

	let co = 'python '.vimp.' . '.line.' '.ext
	let co2 = 'python '.vimp2.' . '.line.' '.ext
	let result = system(co)
	let result2 = system(co2)
	
	if result2 != ''
		let result = result.' '.result2

	let result = split(result)
	
	return result
endfun
