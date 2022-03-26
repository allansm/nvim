function! package#Package(findstart,base)
	let nvim = stdpath('config')
	let vimp = nvim.'/python/package/getPackage.pyc'
	
	let ext = ''.expand('%:e')

	let co = 'python '.vimp.' '.ext
	
	let result = system(co)

	return split(result,",,")

endfun
