:colorscheme allan
:set splitright
:set splitbelow

function! s:Exec(command)
    :exe ":normal i" . system(a:command)
endfunction

function! s:Vp()
    :vertical resize +10
endfunction

function! s:Hp()
    :res +10
endfunction

function! s:Vl()
    :vertical resize -10
endfunction

function! s:Hl()
    :res -10
endfunction

function! s:Vs(size)
	:execute 'vertical resize '. a:size
endfunction

function! s:Hs(size)
	:execute 'res ' . a:size
endfunction

function! s:Sh(command)
	:execute 'new term://' . a:command	
endfunction


function! s:Mem()
	:execute 'Sh memorize ' . getline(".")
endfunction

function! s:Test()
	:execute 's/'. getline(".").'//g'
	:execute 'Exec php test.php '.getline(".") 
endfunction

command! -nargs=1 Exec call s:Exec(<f-args>)

command! -nargs=0 Vp call s:Vp()
command! -nargs=0 Hp call s:Hp()

command! -nargs=0 Vl call s:Vl()
command! -nargs=0 Hl call s:Hl()

command! -nargs=1 Vs call s:Vs(<f-args>)
command! -nargs=1 Hs call s:Hs(<f-args>)


command! -nargs=1 Sh call s:Sh(<f-args>)

command! -nargs=0 Mem call s:Mem()

command! -nargs=0 Test call s:Test()
