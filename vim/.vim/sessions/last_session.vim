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
edit ~/.dotfiles/vim/.vim/vimrc
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
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
let s:l = 387 - ((23 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 387
normal! 038|
lcd ~/Projects/ros/catkin_ws/src/federated
tabnext 1
badd +18 ~/Projects/ros/catkin_ws/src/federated/launch/federated.launch
badd +14 ~/Projects/ros/catkin_ws/src/federated/nodes/scikitclassifier.py
badd +474 ~/Projects/ros/catkin_ws/src/federated/src/atrlearning/cross_validation.py
badd +28 ~/Projects/ros/catkin_ws/src/federated/nodes/federated_server.py
badd +1 ~/Projects/ros/catkin_ws/src/federated/nodes/federated_client.py
badd +100 ~/Projects/ros/catkin_ws/src/federated/src/atrlearning/arff_tools.py
badd +1 ~/Projects/ros/catkin_ws/src/federated/nodes
badd +55 ~/Projects/ros/catkin_ws/src/federated/nodes/server.py
badd +6 ~/Projects/ros/catkin_ws/src/federated/srv/PerceptronParams.srv
badd +1 ~/Projects/ros/catkin_ws/src/federated/msg/FloatArray.msg
badd +1 ~/Projects/ros/catkin_ws/src/federated/msg/Float2DMatrix.msg
badd +1 ~/Projects/ros/catkin_ws/src/federated/msg/Float3DMatrix.msg
badd +46 ~/Projects/ros/catkin_ws/src/federated/CMakeLists.txt
badd +93 ~/Projects/ros/catkin_ws/src/acoustic_touch_recognition/CMakeLists.txt
badd +387 ~/.dotfiles/vim/.vim/vimrc
badd +1 ~/.dotfiles/vim/.vim
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
