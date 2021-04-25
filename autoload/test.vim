function! test#Test(findstart, base)
	let vimp = stdpath("config").'\php\memorize\autoComplete.php'
	let line=getline(".")
	
	if line != ''
		let result = system('php '.vimp.' '.line)
		:execute '%s/'.line.'/'.result.'/g'
		let res = []
		return res 

	else
		let vimp2 = stdpath("config").'\php\memorize\getmemorized.php'
		let result2 = system('php '.vimp2)
		
		return split(result2,',')
	endif	
endfun
