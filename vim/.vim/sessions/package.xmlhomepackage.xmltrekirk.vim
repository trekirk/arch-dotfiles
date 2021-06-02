let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Projects/ros/catkin_ws/src/federated
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit package.xml
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 23 + 25) / 50)
exe 'vert 1resize ' . ((&columns * 53 + 80) / 160)
exe '2resize ' . ((&lines * 23 + 25) / 50)
exe 'vert 2resize ' . ((&columns * 53 + 80) / 160)
exe '3resize ' . ((&lines * 23 + 25) / 50)
exe 'vert 3resize ' . ((&columns * 107 + 80) / 160)
exe 'vert 4resize ' . ((&columns * 52 + 80) / 160)
argglobal
balt msg/Float2DMatrix.msg
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists("msg/Float2DMatrix.msg") | buffer msg/Float2DMatrix.msg | else | edit msg/Float2DMatrix.msg | endif
balt package.xml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 02|
lcd ~/Projects/ros/catkin_ws/src/federated
wincmd w
argglobal
if bufexists("~/Projects/ros/catkin_ws/src/federated/msg/Float2DMatrix.msg") | buffer ~/Projects/ros/catkin_ws/src/federated/msg/Float2DMatrix.msg | else | edit ~/Projects/ros/catkin_ws/src/federated/msg/Float2DMatrix.msg | endif
balt ~/Projects/ros/catkin_ws/src/federated/nodes/server.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/Projects/ros/catkin_ws/src/federated
wincmd w
argglobal
if bufexists("~/Projects/ros/catkin_ws/src/federated/nodes/server.py") | buffer ~/Projects/ros/catkin_ws/src/federated/nodes/server.py | else | edit ~/Projects/ros/catkin_ws/src/federated/nodes/server.py | endif
balt ~/Projects/ros/catkin_ws/src/federated/msg/Float2DMatrix.msg
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 02|
lcd ~/Projects/ros/catkin_ws/src/federated
wincmd w
exe '1resize ' . ((&lines * 23 + 25) / 50)
exe 'vert 1resize ' . ((&columns * 53 + 80) / 160)
exe '2resize ' . ((&lines * 23 + 25) / 50)
exe 'vert 2resize ' . ((&columns * 53 + 80) / 160)
exe '3resize ' . ((&lines * 23 + 25) / 50)
exe 'vert 3resize ' . ((&columns * 107 + 80) / 160)
exe 'vert 4resize ' . ((&columns * 52 + 80) / 160)
tabnext 1
badd +1 ~/Projects/ros/catkin_ws/src/federated/msg/Float2DMatrix.msg
badd +1 ~/Projects/ros/catkin_ws/src/federated/package.xml
badd +1 ~/Projects/ros/catkin_ws/src/federated/nodes/server.py
badd +1 ~/Projects/ros/catkin_ws/src/federated/nodes/client.py
badd +1 ~/~
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSAc
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
