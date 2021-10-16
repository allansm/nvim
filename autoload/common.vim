function! common#ShowDict(findstart,base)
	let result = split(g:dict)
	let tdict = ""
	let start = 0	
	for n in result
		let flag = 0
		if(start == 1)
			let result2 = split(tdict)	
			for x in result2
				if(stridx(x,n) != -1)
					let flag = 1
				endif
			endfor
		endif

		if(flag == 0)
			let tdict = tdict.n.' '
			let start = 1
		endif		
	endfor

	return split(tdict)	
endfun
