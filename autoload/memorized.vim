function! memorized#AutoComplete(findstart, base)
	let nvim = stdpath('config')
	let vimp = nvim.'/php/memorize/autoComplete.php'	

	let co = 'php '.vimp.' @'
	
	let result = system(co)

	return split(result,",,")
	
endfun
