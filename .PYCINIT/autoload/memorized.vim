function! memorized#AutoComplete(findstart, base)
	let nvim = stdpath('config')
	let vimp = nvim.'/python/memorize/memorized.pyc'	

	let co = 'python '.vimp
	
	let result = system(co)

	return split(result,",,")
	
endfun
