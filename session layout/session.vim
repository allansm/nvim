let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 34 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 111 + 84) / 168)
exe '2resize ' . ((&lines * 12 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 111 + 84) / 168)
exe '3resize ' . ((&lines * 16 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 56 + 84) / 168)
exe '4resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 56 + 84) / 168)
exe '5resize ' . ((&lines * 7 + 24) / 48)
exe 'vert 5resize ' . ((&columns * 27 + 84) / 168)
exe '6resize ' . ((&lines * 7 + 24) / 48)
exe 'vert 6resize ' . ((&columns * 28 + 84) / 168)
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
exe '1resize ' . ((&lines * 34 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 111 + 84) / 168)
exe '2resize ' . ((&lines * 12 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 111 + 84) / 168)
exe '3resize ' . ((&lines * 16 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 56 + 84) / 168)
exe '4resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 56 + 84) / 168)
exe '5resize ' . ((&lines * 7 + 24) / 48)
exe 'vert 5resize ' . ((&columns * 27 + 84) / 168)
exe '6resize ' . ((&lines * 7 + 24) / 48)
exe 'vert 6resize ' . ((&columns * 28 + 84) / 168)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :