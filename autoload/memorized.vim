function! memorized#AutoComplete(findstart, base)
	if has("win64") || has("win32") || has("win16")
		let nvim = '%userprofile%/appdata/local/nvim'
	else
		let nvim = '~/.config/nvim'
	endif
	let vimp = nvim.'/php/memorize/autoComplete.php'
	let line=getline(".")

	if line == ''
		let line = "@"
	endif

	let co = 'php '.vimp.' '.line
	
	let result = system(co)

	return split(result,",,")
	
endfun
