function! package#Package(findstart,base)
	if has("win64") || has("win32") || has("win16")
		let nvim = '%userprofile%/appdata/local/nvim'
	else
		let nvim = '~/.config/nvim'
	endif
	let vimp = nvim.'/python/package/test.py'
	
	let ext = ''.expand('%:e')

	let co = 'python '.vimp.' '.ext
	
	let result = system(co)

	return split(result,",,")

endfun
